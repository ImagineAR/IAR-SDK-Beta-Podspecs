#
# Be sure to run `pod lib lint IAR.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IAR-Surface'
  s.version          = '1.6.1-beta2'   # format 1.5.0-beta5
  s.summary          = 'ImagineAR Surface SDK for custom AR campaigns.'

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
  s.source           = { :http => 'https://github.com/ImagineAR/IAR-SDK-Binaries/blob/bf7d0d88b8b8ea83136ca30566e928b942194413/IAR_Surface_SDK.zip?raw=true' }
  s.swift_version    = '5.3.1'

  s.ios.deployment_target = '12.0'
  
  s.frameworks = 'IAR_Surface_SDK', 'ARKit'
  
  s.public_header_files = "Framework-Surface/IAR_Surface_SDK.xcframework/*/IAR_Surface_SDK.framework/Headers/*.h"
  s.source_files = "Framework-Surface/IAR_Surface_SDK.xcframework/*/IAR_Surface_SDK.framework/Headers/*.h"

  s.ios.vendored_frameworks = 'Framework-Surface/IAR_Surface_SDK.xcframework'
end
