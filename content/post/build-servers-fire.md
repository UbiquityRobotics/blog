+++
date = "2016-07-06T00:03:00-08:00"
draft = false
title = "Build Servers on Fire"
author = "Rohan Agrawal"

+++

Early this morning I woke up to the smell of burning insulation, turns out it was coming from the Ubiquity (formerly Raspbian) build farm.

After some investigation (and making sure everything/everyone else was not on fire), it looks like one of the disk drives failed catastrophically, causing a short that burned the wires going from it to the PSU, along with the wires it was bundled with.

I haven't tried spinning up the drive again to verify its deadness, but the main board for the drive looks mostly healthy.

Pictures (sorry about the not great quality, but it was 3AM):
![alt text](/img/builders-fire/sata.jpg "Sata connector, melted, with big hole in middle")
![alt text](/img/builders-fire/harddrive.jpg "The hard drive in question.")
![alt text](/img/builders-fire/charred.jpg "bunch on charred wires around PSU")
![alt text](/img/builders-fire/plate.jpg "Acrylic plate with melty bits")

Welp, time to go back to sleep.