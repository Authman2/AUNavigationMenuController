Pod::Spec.new do |s|
s.name             = 'AUNavigationMenuController'
s.version          = '0.1.0'
s.summary          = 'Create a menu that slides down from the top of the screen.'

s.description      = <<-DESC
Adds a menu that slides down from the top of the screen after tapping the navigation bar.
DESC

s.homepage         = 'https://github.com/Authman2/AUNavigationMenuController.git'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Adeola Uthman' }
s.source           = { :git => 'https://github.com/Authman2/AUNavigationMenuController.git', :tag => s.version.to_s }

s.source_files = 'AUNavigationMenuController/Classes/*.swift'

end
