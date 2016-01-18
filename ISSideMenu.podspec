Pod::Spec.new do |s|
  s.name         = "ISSideMenu"
  s.version      = "1.0.0"
  s.summary      = "A Swift implementation of side menu with parallax effect"
  s.description  = <<-DESC
  ISSideMenu is a fork of SSASideMenu that was created by Sebastian Andersen.
  It is a reimplementation of romaonthego/RESideMenu in Swift. A iOS 7/8 style side menu with parallax effect. ViewController is changing size during animation.
  Fork by Splash04
                   DESC
  s.homepage     = "https://github.com/Splash04/ISSideMenu"
  s.screenshots  = "https://github.com/SSA111/SSASideMenu/blob/master/LeftDemo.gif?raw=true", "https://github.com/SSA111/SSASideMenu/blob/master/RightDemo.gif?raw=true"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Sebastian Andersen" => "aleksandras@coder.lt", "Igor Kharitoniuk" => "splash@list.ru" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Splash04/ISSideMenu.git", :tag => s.version.to_s }
  s.source_files = "ISSideMenu/*.swift"

end
