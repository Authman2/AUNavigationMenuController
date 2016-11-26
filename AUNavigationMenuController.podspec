#
# Be sure to run `pod lib lint AUNavigationMenuController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AUNavigationMenuController'
  s.version          = '0.5.0'
  s.summary          = 'Creates a menu that slides down from the top of the screen.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
After tapping on the navigation bar, a menu will slide down from the top of the screen, allowing the user to go to different pages within the application.
                       DESC

  s.homepage         = 'https://github.com/Authman2/AUNavigationMenuController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adeola Uthman' => 'authman2@gmail.com' }
  s.source           = { :git => 'https://github.com/Authman2/AUNavigationMenuController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.ios.source_files = 'AUNavigationMenuController/Classes/**/*.{swift}'

end
