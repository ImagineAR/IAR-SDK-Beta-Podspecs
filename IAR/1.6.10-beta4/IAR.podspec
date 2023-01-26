#
# Be sure to run `pod lib lint IAR.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IAR'
  s.version          = '1.6.10-beta4'   # format 1.5.0
  s.summary          = 'ImagineAR SDK for custom AR campaigns.'

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
  s.source           = { :http => 'https://github.com/ImagineAR/IAR-SDK-Binaries/blob/45da38465a2368b1b609aa7f950c207325d80a06/IAR-SDK.zip?raw=true' }
  s.swift_version    = '5.3.1'

  s.ios.deployment_target = '12.0'
  
  s.dependency 'IAR-Core',    '1.6.10-beta4'
  s.dependency 'IAR-Surface', '1.6.10-beta4'
  s.dependency 'IAR-Target',  '1.6.10-beta4'
  s.dependency 'IAR-NFC',     '1.6.10-beta4'
end
