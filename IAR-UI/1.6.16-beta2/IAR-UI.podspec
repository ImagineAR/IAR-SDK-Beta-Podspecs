#
# Be sure to run `pod lib lint IAR.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IAR-UI'
  s.version          = '1.6.16-beta2'   # format 1.5.0-beta5
  s.summary          = 'ImagineAR DropIn UI SDK for custom AR experience.'

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
  s.source           = { :http => 'https://github.com/ImagineAR/IAR-SDK-Binaries/blob/74fd463035e916cd69031f6e76600e2ba847ba6b/IAR_UI_SDK.zip?raw=true' }
  s.swift_version    = '5.3.1'

  s.ios.deployment_target = '12.0'
  
  s.frameworks = 'IAR_UI_SDK'

  s.dependency 'IAR-Core',    '1.6.16-beta2'
  s.dependency 'IAR-Surface', '1.6.16-beta2'
  s.dependency 'IAR-Target',  '1.6.16-beta2'

  s.public_header_files = "Framework-UI/IAR_UI_SDK.xcframework/*/IAR_UI_SDK.framework/Headers/*.h"
  s.source_files = "Framework-UI/IAR_UI_SDK.xcframework/*/IAR_UI_SDK.framework/Headers/*.h"

  s.ios.vendored_frameworks = 'Framework-UI/IAR_UI_SDK.xcframework'
end
