# AUNavigationMenuController

[![CI Status](http://img.shields.io/travis/Adeola Uthman/AUNavigationMenuController.svg?style=flat)](https://travis-ci.org/Adeola Uthman/AUNavigationMenuController)
[![Version](https://img.shields.io/cocoapods/v/AUNavigationMenuController.svg?style=flat)](http://cocoapods.org/pods/AUNavigationMenuController)
[![License](https://img.shields.io/cocoapods/l/AUNavigationMenuController.svg?style=flat)](http://cocoapods.org/pods/AUNavigationMenuController)
[![Platform](https://img.shields.io/cocoapods/p/AUNavigationMenuController.svg?style=flat)](http://cocoapods.org/pods/AUNavigationMenuController)

## About
AUNavigationMenuController is a subclass of UINavigationController. When the navigation bar is clicked, a menu is slide down from the top of the screen so that the user can go to different pages within the app. 

## How To
- Create a window in the AppDelegate file.
<br><img src="https://github.com/Authman2/AUNavigationMenuController/blob/master/Tutorial/Tutorial1.png" alt="tutorial1" width="500" height="400">
- Create separate files for each view controller that you want in your application.
<br><img src="https://github.com/Authman2/AUNavigationMenuController/blob/master/Tutorial/Tutorial2.png" alt="tutorial2" width="300" height="200">
- Create references to each view controller in the AppDelegate file.
<br><img src="https://github.com/Authman2/AUNavigationMenuController/blob/master/Tutorial/Tutorial3.png" alt="tutorial3" width="500" height="400">
- Setup an AUNavigationMenuController object and an initial view controller for the navigation controller to use as the root.
<br><img src="https://github.com/Authman2/AUNavigationMenuController/blob/master/Tutorial/Tutorial4.png" alt="tutorial4" width="500" height="400">
- Add menu items for each view controller that you will need in you app, making sure to give it a name, an optional image, and a destination view controller. The destination is the view controller that the menu item will take the user to.
<br><img src="https://github.com/Authman2/AUNavigationMenuController/blob/master/Tutorial/Tutorial5.png" alt="tutorial5" width="500" height="400">
- Build and run your application!

## Requirements

## Installation

AUNavigationMenuController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AUNavigationMenuController"
```

## Author

Adeola Uthman, authman2@gmail.com

## License

AUNavigationMenuController is available under the MIT license. See the LICENSE file for more info.
