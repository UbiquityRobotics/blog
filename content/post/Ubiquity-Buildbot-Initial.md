+++
date = "2018-01-14T09:16:49-07:00"
draft = false
title = "Ubiquity Buildbot"
author = "Rohan Agrawal"
+++

After any amount of serious ROS development, you quickly run into a common deployment issue.
How can I build debian packages or 'debs' for my stuff so that other people can use them?
For open-source packages, like ours at Ubiquity, this is easy enough, just use `bloom` and follow [the instructions](http://wiki.ros.org/bloom/Tutorials/FirstTimeRelease).
This works great, and the OSRF buildfarm will handle the building of the packages and all of complexities involved.

But what about packages that have weird dependencies, like [raspicam_node](https://github.com/UbiquityRobotics/raspicam_node)?
What about building debians to test your releases before making them public, or making an emergency patch without waiting for the OSRF sync?

The first issue can be solved with moderate complexity using by spinning up your own instance of the [ros buildfarm](https://github.com/ros-infrastructure/ros_buildfarm) or [buildbot-ros](https://github.com/mikeferguson/buildbot-ros).

For the second problem, we didn't find any acceptable solution, so we decided to make our own.
Based on Buildbot 0.9.0, [ubiquity_buildbot](https://github.com/UbiquityRobotics/ubiquity_buildbot) is our buildfarm configuration.

For tackling the standard ROS debian package build (first issue), it uses a similar approach to the others, and uses `cowbuilder` to do the actual deb builds. 
Unlike the others, it doesn't use a rosdistro, instead the build master configuration just contains everything, and it always builds the latest version.
(This may change in the future.)

For the second problem, building testing debians, we use a system similar to how the backports repositories for debian work.
If you read the somewhat confusingly worded [Debian Policy Manual on package version numbers](https://www.debian.org/doc/debian-policy/#s-f-version), you notice that tilde (`~`) has a special meaning.
What this boils down to is if you have a debian package version `1.0.0-1`, and version `1.5.0-0~bpo` is available, it will be upgraded.
But when `1.5.0-0~bpo` is installed and `1.5.0-0` is available it will also be upgraded.

This behavior is pretty much exactly what we want.
For the testing debs, if you have the testing version installed, and the stable version comes out, you will be upgraded to it.
This is good because stable ones from OSRF are going to be rebuilt on ABI breakages, which would take a lot of effort to do for our testing debs.
This also allows us to release an emergency patch outside the OSRF pipeline, without having to take over all the package builds.

While the codebase for ubiquity_buildbot is not quite ready for public use right now, it may serve useful as a jumping off point if you have similar debian deployment problems to solve.



