Pod::Spec.new do |s|
  s.name             = 'AUNavigationMenuController'
  s.version          = '0.1.0'
  s.summary          = 'A type of UINavigationController that allows the user to create menus for their applications that are anchored to the top of the screen.'
 
  s.description      = <<-DESC
When the user taps the navigation bar, the menu will drop down from the top of the screen, allowing them to select which page they want to go to.
                       DESC
 
  s.homepage         = 'https://github.com/Authman2/AUNavigationMenuController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adeola Uthman' => 'authman2@gmail.com' }
  s.source           = { :git => 'https://github.com/Authman2/AUNavigationMenuController.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'AUNavigationMenuController/*.swift'
 
end