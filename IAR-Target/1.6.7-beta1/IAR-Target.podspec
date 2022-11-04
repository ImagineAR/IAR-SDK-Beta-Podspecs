#
# Be sure to run `pod lib lint IAR.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IAR-Target'
  s.version          = '1.6.7-beta1'   # format 1.5.0-beta5
  s.summary          = 'ImagineAR Target SDK for custom AR campaigns.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Imagine AR is a native library to facilitate the addition of augmentented reality assets with Vuforia and IAR cloud.
                       DESC

  s.homepage         = 'https://imaginear.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Imagine AR' => 'imaginear.it@gmail.com' }
  s.source           = { :http => 'https://github.com/ImagineAR/IAR-SDK-Binaries/blob/99eb7b75398c0bd74eceb40521ab29a82eb1730f/IAR_Target_SDK.zip?raw=true' }
  s.swift_version    = '5.3.1'

  s.ios.deployment_target = '12.0'
  
  s.frameworks = 'IAR_Target_SDK', 'Vuforia'
  s.dependency 'IAR-Core'

  s.public_header_files = 'Framework-Target/IAR_Target_SDK.xcframework/*/IAR_Target_SDK.framework/Headers/*.h'
  s.source_files = 'Framework-Target/IAR_Target_SDK.xcframework/*/IAR_Target_SDK.framework/Headers/*.h'
  s.ios.resource_bundles = {'Shaders' => ['Framework-Target/IAR_Target_SDK.xcframework/ios-arm64/IAR_Target_SDK.framework/IAR.metallib']}
  s.ios.vendored_frameworks = 'Framework-Target/IAR_Target_SDK.xcframework', 'Framework-Target/Vuforia.xcframework'
end
