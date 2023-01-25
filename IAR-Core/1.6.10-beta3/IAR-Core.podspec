#
# Be sure to run `pod lib lint IAR.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IAR-Core'
  s.version          = '1.6.10-beta3'   # format 1.5.0-beta5
  s.summary          = 'ImagineAR Core SDK for custom AR campaigns.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Imagine AR is a native library to facilitate the addition of augmentented reality assets with Vuforia and IAR cloud.
                       DESC

  s.homepage         = 'https://docs.imaginear.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Imagine AR' => 'imaginear.it@gmail.com' }
  s.source           = { :http => 'https://github.com/ImagineAR/IAR-SDK-Binaries/blob/982577266185b61839686f34e5a3b4219ec81b5c/IAR_Core_SDK.zip?raw=true' }
  s.swift_version    = '5.3.1'
  
  s.ios.deployment_target = '12.0'
  
  s.frameworks = 'UIKit', 'AVFoundation', 'SystemConfiguration', 'Security', 'QuartzCore', 'ModelIO', 'MediaPlayer', 'CoreMotion', 'CoreMedia', 'CoreGraphics', 'CoreFoundation', 'AVFoundation', 'AudioToolbox', 'Metal', 'MetalKit', 'SceneKit', 'IAR_Core_SDK'

  s.dependency 'AFNetworking',       '~>4.0.1'     # https://github.com/AFNetworking/AFNetworking
  s.dependency 'R.swift',            '~>6.1.0'     # https://github.com/mac-cain13/R.swift
  s.dependency 'SnapKit',            '~>5.0.1'     # https://github.com/SnapKit/SnapKit
  s.dependency 'Moya',               '~>13.0.1'    # https://github.com/Moya/Moya

  s.public_header_files = "Framework-Core/IAR_Core_SDK.xcframework/*/IAR_Core_SDK.framework/Headers/*.h"
  s.source_files = "Framework-Core/IAR_Core_SDK.xcframework/*/IAR_Core_SDK.framework/Headers/*.h"

  s.ios.vendored_frameworks = 'Framework-Core/IAR_Core_SDK.xcframework'
end
