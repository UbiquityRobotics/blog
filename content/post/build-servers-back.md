+++
date = "2016-10-22T00:00:00-08:00"
draft = false
title = "Build Servers Reincarnated"
author = "Rohan Agrawal"

+++

After the previous build server setup had destroyed itself with fire, much like the Phoenix from the Ashes, I decided to reincarnate it in a slightly more resilient (read non-flammable) case.

The king is dead, long live the king:
![alt text](/img/builders-back/case.jpg "")

I used an Extended-ATX case with a dead motherboard I had lying around, and put all the boards and the hard drives in it. There is also an 8-Port Ethernet switch that connects to all the boards and means there is only 1 Ethernet coming out of the box.

The insides:
![alt text](/img/builders-back/inside.jpg "")

The boards and the switch are mounted to a laser-cut [acrylic panel I made in Onshape.](https://cad.onshape.com/documents/3b8e00b2f61a9a6e2630b77c/w/663eebe4da6c437692231d40/e/e08ce757ed3d1b84d2111e3b)
The hard drives are securely mounted into the rails on the case for them. 

Closeup with SATA cables removed:
![alt text](/img/builders-back/nosata.jpg "")

I have also upgraded all the builders to Ubuntu 16.04, running buildbot-ros to build packages for ROS Kinetic. 
