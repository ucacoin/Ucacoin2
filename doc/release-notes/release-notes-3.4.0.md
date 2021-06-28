UCACoin version *3.4.0* is now available from: [https://github.com/ucacoin/Ucacoin2/releases/](https://github.com/ucacoin/Ucacoin2/releases/)

This is a new minor version release, including various bug fixes and performance improvements.


Recommended Update
==============

This version is a recommended, update for all users and services.


How to Upgrade
==============

If you are running an older version, shut it down. Wait until it has completely shut down (which might take a few minutes for older versions), 
then run the installer (on Windows) or just copy over /Applications/UCACoin-Qt (on Mac) or ucacoind/ucacoin-qt (on Linux).


Compatibility
==============

UCACoin is extensively tested on multiple operating systems using the Linux kernel, macOS 10.10+, and Windows 10.


Notable Changes
==============

As 64 bit is default on all platforms we removed 32 bit support completely (in fact 3.3.0 already did that partially).
This includes file name schemes, so if you manually linked to the executable on Windows please make
sure you adjust the links to the new binary file.
Additionally you may uninstall the deprecated "Ucacoin 3.3.0" installation once you installed the new 3.4.0.

In this version we fixed an error in the MasterNode collateral calculation. As many of you noticed the collateral should have increased
to 1.5Mio UCA lately according to the Whitepaper. In fact there was a typo in the sourcecode so that it was decreased wo 150k UCA instead.
This is fixed in 3.4.0 so Masternodes will need a new collateral. As this is the last increase, it will be the last time you need to adjust the collateral.
