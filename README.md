Purpose:
--------

ADiOSUtilities contains a number of targets for building static libraries with
some classes that have been found to be helpful.

Building/Linking/Adding to your project:
----------

All of the targets within the ADiOSUtilities project are ARC based. You will
need an ARC compatible compiler. The current settings are designed to use the
LLVM compiler available with the most recent release of XCode.

There are a few steps to get your project to build and link the libraries.

* Add the ADiOSUtilities.xcodeproj file to your Xcode project
* Add the libraries that you would like to use to Build Phases -> Target Dependencies in your project's project file
* Add the libraries that you would like to use to Build Phases -> Link Binary With Libraries in your project's project file
* Add $(BUILT\_PRODUCTS\_DIR)/../ADiOSUtilities and $(BUILT\_PRODUCTS\_DIR)/../../ADiOSUtilities to the Header Search Paths section of your project file

Dependencies:
-----------------

libARHelpers.a within ARiOSUtilities depends on AudioToolbox.framework. Add it to Build Phases -> Link Binary With Libraries in your project's project file.

Credits:
--------
ARiOSUtilities includes ideas/code from

* [Google](http://google.com)
* [Matthew Campbell](http://howtomakeiphoneapps.com)
* [Trevor Harmon](http://vocaro.com/trevor/blog/)
* [MGTwitterEngine](https://github.com/mattgemmell/MGTwitterEngine) by [Matt Gemmell](https://github.com/mattgemmell)