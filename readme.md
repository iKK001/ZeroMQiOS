Creation of an iOS App with a zeroMQ Hello-world Example
------------------------
First, you need to do some work:

 - Get zeromq.a and libsodium.a libraries
 - best is to use the shell script of Drew Crawford :
 His git repo can be found here:
 https://github.com/drewcrawford/libzmq-ios.git)
(since his git-clone of libzmq does not clone or download everyhing, you need to manually download the libsodium-ios subfolder, add it to your initially downloaded libzmq-ios, and you are good to go..)

	- edit the downloaded libzmq.sh and add newest zeromq tar version (currently TARNAME="zeromq-4.1.5")

	- execute the shell script in terminal, use:
	> bash libzmq.sh

 - There are other approaches on how to create a zeromq library that can be used for an iOS app (see zeromq.org and search for iOS: [Link](http://zeromq.org/build:iphone))

 - Next is the Creation of a new ZeroMQ iOS-Project
  - copy libzmq_dis-folder into your project folder
- copy libsodium_dist-folder into your project folder
- add the two frameworks (i.e. zeromq.a and libsodium.a)
- add also the include .h-files (i.e. libzmq_dist/include/ and libsodium_dist/include/)

 --> You should end up with something like this:
![framework folder in your app](https://github.com/korners/ZeroMQiOS/blob/master/frameworkFolder.jpg)

Normally, you are all set now to start programming a C++ zeroMQ function inside your new iOS project. I recommend building an Objective-C Wrapper class in order to program the C++ functions.

How to create Mac OSX ZeroMQ-Server/Clients:
--------------------------------------------
In order to test your newly created zeroMQ iOS App, you need to have a test-server (eventuall client). In order to get something like that please follow this tutorial by David Raleigh:

http://davidraleigh.io/getting-started-with-zeromq-omq/
