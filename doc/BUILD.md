
Build for Linux
===============
* Set up an Ubuntu 20.04 VM (no GUI) and access it via SSH
* **OR** Use your native Ubuntu installation ;)
* `sudo apt-get install build-essential libtool bsdmainutils autotools-dev autoconf pkg-config automake python3`
* Copy sources or clone to a folder in filesystem root (for now: /Ucacoin2)

If you copied sources make sure to set some attributes correctly:
```
chmod 764 /Ucacoin2/autogen.sh /Ucacoin2/share/genbuild.sh
chmod 764 /Ucacoin2/depends/config.guess /Ucacoin2/depends/config.sub /Ucacoin2/depends/cargo-checksum.sh
```

Build steps:
* compile all dependecies
* automake UcaCoin itself

Compile dependencies
--------------------
```
cd /Ucacoin2/depends
make
```
This will take some time to complete (up to an hour).    
Once finished take note of the folder where the packages are located, this is for example /Ucacoin2/depends/x86_64-pc-linux-gnu.    

Compile Ucacoin
---------------
Enter the Ucacoin2 folder and let `autogen.sh` run which generates the configure environment.    
Use the `configure` env and specify the dependency-folder as asolute path (below subsitited from $(pwd)).    
Finally make  it and be patient: again this will take it's time.
```
cd /Ucacoin2
./autogen.sh
./configure --enable-cxx --prefix=$(pwd)/depends/x86_64-pc-linux-gnu
make
```

Build for Windows
=================
This is done via Cross-Compilation, so you need the Ubuntu VM from "Build for Linux".    
Additionally install some stuff: `sudo apt install nsis g++-mingw-w64-x86-64`     
Set the default mingw32 g++ compiler option to posix:
`sudo update-alternatives --config x86_64-w64-mingw32-g++`    
Once this is prepared, compilation steps are common to the Linux ones.
```
cd /Ucacoin2/depends
make HOST=x86_64-w64-mingw32
cd /Ucacoin2
./autogen.sh
CONFIG_SITE=$(pwd)/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/ --disable-online-rust
make
```
Once this process succeeds, you can build the installer like this:
```
make deploy
```

Build for MacOS
===============
* Set up a MacOS Mojave and install XCode 
* Start the Terminal App (or access the machine via SSH remotely)
* Copy sources or clone to a folder in filesystem root (for now: /Ucacoin2)
On MacOS there's no way to compile the depends.    
Install dependencies like this:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install autoconf automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf python3 qt5 zmq libevent qrencode gmp libsodium rust librsvg
```

Once done you need to ensure file attributes for some scripts:
```
chmod 764 /Ucacoin2/autogen.sh /Ucacoin2/share/genbuild.sh
```

Finally do
```
cd /Ucacoin2
./autogen.sh
./configure
make
```

Once this process succeeds can build the DMG fro deployment.    
Note that you must use the Terminal app for this. If you used 
SSH to access the Mac before (which is okay) stop and head over to the
Terminal App.    
**SSH based deployment will fail** !    
In the process of making there may Windows pop up. Follow instructions
if you are asked for permission and just ignore windows withoud explicit
call to action.
```
cd /Ucacoin2
make deploy
```


Just informational
==================
Some notes on the "Argument list too long" error:
https://www.linuxjournal.com/article/6060?page=0,0

