#
# Be sure to run `pod lib lint AngleGradientBorderView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AngleGradientBorderView'
  s.version          = '1.0.0'
  s.summary          = 'An easy to use border gradient view.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A simple UIView subclass to easily add a stroked border with a given color gradient and border with.'

  s.homepage         = 'https://github.com/MetalPay/AngleGradientBorderView.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'erusso1' => 'ephraim@metalpay.co' }
  s.source           = { :git => 'https://github.com/MetalPay/AngleGradientBorderView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.source_files = 'AngleGradientBorderView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AngleGradientBorderView' => ['AngleGradientBorderView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
