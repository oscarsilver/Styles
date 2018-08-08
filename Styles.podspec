Pod::Spec.new do |s|
  s.name         = "Styles"
  s.version      = "0.0.1"
  s.summary      = "Convenient style structs for layout of UIKit classes"
  s.description  = <<-DESC
    Convenient style structs for layout of UIKit classes
  DESC
  s.homepage     = "https://github.com/oscarsilver/Styles.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Oscar Silver" => "oscarsilverdev@gmail.com" }
  s.social_media_url   = ""

  s.ios.deployment_target = "11.0"
  s.swift_version = '4.0'
  s.source       = { :git => "https://github.com/oscarsilver/Styles.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation", "UIKit"
end
