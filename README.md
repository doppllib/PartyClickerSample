# PartyClickerSample

This is a functional sample app built using the Doppl framework. It is not a serious app example,
but does demonstrate the basic process of sharing code without too much setup required.

Please follow the [Doppl tutorial](http://doppl.co/docs/quicktutorial.html) to get more install detail.

There is an associated blog post [here](https://medium.com/@kpgalligan/f62ba341719a). It is somewhat outdated, particularly the parts about
database libraries. It does explain more about Doppl and the app itself.

## Packages Used

This sample uses Room DB and Rxjava to build a basic sample app. The code below the UI is shared to iOS, and used there as well.

## Install

Please follow the [Doppl tutorial](http://doppl.co/docs/quicktutorial.html). There are several steps, some of which may be confusing to developers who are not experienced on both Android and iOS.

* Download [Doppl library](http://doppl.co/download.html)

* Add this to local.properties 'j2objc.home=[your doppl dist dir]'

* In Xcode > Preferences > Location > Custom Paths add 'J2OBJC_LOCAL_PATH' and set to the doppl dist dir

* On the command line at the root of the project source, run './gradlew dopplDeploy'

* Open the ios project. You should be able to run sample.

## Video

[![Party Clicker Setup](https://img.youtube.com/vi/k0Z6RMkzkr4/0.jpg)](https://www.youtube.com/watch?v=k0Z6RMkzkr4)
