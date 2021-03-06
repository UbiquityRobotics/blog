+++
date = "2015-12-21T00:00:00-07:00"
draft = false
title = "ROS on Raspberry Pi 2"
author = "Rohan Agrawal"

+++
As part of our goal to create a low cost robotics platform, we needed to use a low cost compute platform that could run [Robot Operating System](http://www.ros.org/). After trying many different single board computers, including the original Raspberry Pi, we finally settled on the Raspberry Pi 2 (RPi2). The RPi2 uses a ARMv7 architecture (as opposed to ARMv6), which means that it can run Ubuntu. For running ROS indigo on ARM, we needed Ubuntu 14.04. We started with the one described here, [https://wiki.ubuntu.com/ARM/RaspberryPi](https://wiki.ubuntu.com/ARM/RaspberryPi).

Eventually, we grew tired of having to install a set of basic packages, and do some minor reconfiguration every time that we wanted to bring up a new robot, or re-flash a Pi. So we took the script that was used to build the image that we started with, and modified it to add all the packages and configuration that we wanted, including pre-installing ROS as part of the image. This helped us not only by making robot bring-up faster and easier, but also by allowing us to make sure that every robot started as a "clean slate".

The latest build of the image can be downloaded at [http://ubiquityrobotics.com/latest-ubiquity-trusty.zip](http://ubiquityrobotics.com/latest-ubiquity-trusty.zip) (~1.2 GB). After downloading and unzipping the file  you will find an image file and bmap file. This is because we use bmap-tools to make flashing images to SD cards much faster. Using bmap is optional, and you can directly use the .img file with your favorite image flashing program. The image is ~3GB when unzipped, so it could theoretically fit on a 4GB microSD card, but we recommend at least a 8GB or 16GB microSD.

The image is continually being modified and updated, so the latest documentation is available on the ubiquity_main repo on github, on [this page](https://github.com/UbiquityRobotics/ubiquity_main/blob/master/Doc_Downloading_and_Installing_the_Ubiquity_Ubuntu_ROS_Kernel_Image.md), including documentation on how to build the image yourself.