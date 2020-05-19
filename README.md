# setupRopstar

Credits
-------
All the credits for the symlink creation (the setupLibc.sh script) go to my friend Maxxvw. I don't take any credits on this part ! If you are an Hack The Box player and think this script is usefull, don't hesitate to drop a respect on his profile : https://www.hackthebox.eu/home/users/profile/258474

Obviously, all the credits for the three main projects used here go to their creators !

Why
---
The installation of the Ropstar tool by XCT doesn't work properly with the libc-database project. There are problems of symbolic links by default. This script is here to correctly setup all the projects together.

How
---
Just execute the `setup.sh` script, it will setup all the ropstar project automatically (it will download ROPGadget, all the libc-database, ropstar and create the symlinks).
