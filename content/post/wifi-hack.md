+++
date = "2017-02-19T00:00:00-08:00"
draft = false
title = "Raspberry Pi 3 Wifi Hackery"
author = "Rohan Agrawal"

+++

Robots, especially ROS ones, need Wifi connectivity. With the Raspberry Pi 3, a lot of the software/firmware level headaches are alleviated thanks to the hard work of the Raspberry Pi Foundation. However, in their efforts to keep the Pi 3 the same size, and make FCC compliance easier, they had to put a pretty wimpy ceramic “chip” antenna for Wifi and Bluetooth.

In order to get better wifi connectivity on the Pi 3, I decided to venture into finding a way get an external antenna hooked up.

If you look closely at this Pi 3, you will notice it is a bit different than the one you have. (This is my Pi, there are few like it, so this one is mine). 
![alt text](/img/wifi-antenna/spottheufl.jpg "Pi3 with U.FL connector on the back")

Yup, It has an U.FL RF connector soldered onto it, (and a little charring on the mounting hole). The pi has landing pads for it, so all you have to do is get one (like I did from a dead laptop wifi card) and put it on there, and carefully move a 0201 0 Ohm resistor to a new position.

Once you spend a little too long at the reflow station trying to move the tiny resistor, you are ready to do this with your Pi. Won't you just look at that. 
![alt text](/img/wifi-antenna/datconnector.jpg "Another look at the U.FL, with a coax plugged in.")

But what is that coax going to? Let's zoom out a little.
![alt text](/img/wifi-antenna/buildup.jpg "Side view of the robot, with a PCB antenna mounted on the side.")

Oh man, another green PCB! Hanging off the side! It sticks out like a sore thumb, we need a better looking and performing antenna than this one I had lying around.

A better look at that antenna. It is mounted on a acrylic plate to lift it off the metal frame, and also allow the active element of the antenna to overhang the frame.
![alt text](/img/wifi-antenna/showmethemoney.jpg "A close up of the PCB antenna.")

Signal levels are about 5-10dB better at 25 feet from my AP, even with the lid on. We lose the Pi Warranty as well as the FCC and Wifi alliance certifications, but ¯\\\_(ツ)_/¯ for a one off...