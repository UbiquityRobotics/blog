+++
date = "2017-02-23T04:06:00-08:00"
draft = false
title = "Release of Raspberry Pi Camera Node"
author = "Rohan Agrawal"

+++

We are proud to announce the first stable release of our Raspberry Pi Camera Node. We have worked through the issues that we talked about in previous blog posts to the point where we feel comfortable with a stable, public release of the code.

The reposistory is here: https://github.com/UbiquityRobotics/raspicam_node.

We have tested this node on both the 4.1 and 4.4 kernels from the Raspberry Pi Foundation, using our Ubuntu Image, but it should work with ROS on Raspbian as well. Both the original (5MP) and the newer (8MP) cameras work well with this node.

Some features of raspicam_node:
 - Dynamic reconfigure support for camera parameters
 - Fixed shutter_speed support for doing short or long exposures
 - Premade calibration files for Camera V1 and V2
 - Publishing compressed images using hardware encoder