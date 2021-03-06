MacBluetooth [![Build Status](https://travis-ci.org/mamewotoko/MacBluetooth.svg)](https://travis-ci.org/mamewotoko/MacBluetooth)
============

What is this?
-------------
This is Java program that communicate with Android sample chat program distributed in the
following web site. This program is included in Android SDK.

http://developer.android.com/resources/samples/BluetoothChat/index.html

This program accepts connection as server.

* How to build
--------------
1. Install bluecove library. To use it in 64bit Mac, you should install 2.1.1-SNAPSHOT version.
Put jar file into lib directory of this project.

http://snapshot.bluecove.org/distribution/download/2.1.1-SNAPSHOT/2.1.1-SNAPSHOT.62/bluecove-2.1.1-SNAPSHOT.jar

2. Run maven build by following command.

  mvn package

How to run
-----------

1. From console, start jar file in the target directory.

 java -Dfile.encoding=utf-8 -jar MacBluetooth-0.0.1-SNAPSHOT.one-jar.jar

OR use start.sh

 ./start.sh

2. From Android device, start sample Bluetooth chat application and connect to Mac using Insecure
  connection.

3. Start chat! From Mac, standard input is sent as a chat message to android application.
(This is server mode)

  If you start with --client command line option, this program starts as client. At first, you must
  configure android device to make discoverable. Then start this program with --client option.

Future work?
-----------

* Handle disconnect
*  Write test
* Add proper license file for this source code
* Use reader class
* Define InputThread

---
Takashi Masuyama <mamewotoko@gmail.com>
https://mamewo.ddo.jp/
