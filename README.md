************************** Template Theme for cm-11.0 **************************

This is a small howto compile a theme apkfile for CM-11.0, and it is only for linux user's.

All commands are done in the terminal

Requirements:
- Computer
- Common Sense
- Some Linux Experience
- Linux preferably with 64-bit Installed,
- At least 4GB of ram with a dual core processor.

Dependencies: sun java6, I presumes that you have it installed, if not do that first.

Required Software to Install:

For 32-bit and 64-bit System:

 git-core gnupg flex bison python rar original-awk gawk p7zip-full gperf libsdl1.2-dev libesd0-dev squashfs-tools build-essential zip curl   libncurses5-dev zlib1g-dev pngcrush schedtool

Only for 64-bit System:

 g++-multilib lib32z1-dev ia32-libs lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib g++-multilib

Other Required Software:

 libc6-dev x11proto-core-dev libx11-dev libgl1-mesa-dev mingw32 tofrodos python-markdown libxml2-utils

Now to the source:

$ mkdir -p ~/bin

$ mkdir -p ~/android/system

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo (Reboot is required after this)

$ cd ~/android/system/

$ repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

$ repo sync -j16

This takes a while, you have time to make coffee, etc.
Now is the source installed, synced and ready hopefully.
Some last things to do before we begin to compile.
Create a new dir called themes.

$ cd ~/android/system/vendor/tmobile

$ mkdir themes

Put the your theme folder in /themes and if you have downloaded my TEMPLATE THEME rename the folder to Template

Open terminal:

$ cd ~/android/system/

$ . build/envsetup.sh

$ lunch   "then choice from the list with a number, number 1 for a generic build"

$ make -j8 template

All in the theme is stock cm-11.0, I still have a little left to do, but the template works.

- ENJOY :)

Esa Laukkanen <ele.linux@gmail.com>
