UCACoin
=============

Setup
---------------------
[UCACoin](https://ucacoin.org) is the original UCACoin client and it builds the backbone of the network. However, it downloads and stores the entire history of UCACoin transactions; depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more. Thankfully you only have to do this once.

Running
---------------------
The following are some helpful notes on how to run UCACoin on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/ucacoin-qt` (GUI) or
- `bin/ucacoind` (headless)

### Windows

Unpack the files into a directory, and then run ucacoin-qt.exe.

### macOS

Drag UCACoin-Qt to your applications folder, and then run UCACoin-Qt.

Building
---------------------
See [BUILD.md](BUILD.md) for a short guide on howto build Ucacoin.    

More resources:
- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [Gitian Building Guide](gitian-building.md)
