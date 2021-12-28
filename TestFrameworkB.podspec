#
# Be sure to run `pod lib lint TestFrameworkB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestFrameworkB'
  s.version          = '0.12.0'
  s.summary          = 'A short description of TestFrameworkB.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'A short description of TestFrameworkB.'
                       DESC

  s.homepage         = 'https://github.com/wazma/TestThisFrameworkB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wazma' => 'wazma.ali@consoliads.com' }
  s.source           = { :git => 'https://github.com/wazma/TestThisFrameworkB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TestFrameworkB/Classes/**/*'
  
  s.vendored_frameworks = 'TestFrameworkB/AdmobTestFramework.framework'
  s.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.static_framework=true
  # s.resource_bundles = {
  #   'TestFrameworkB' => ['TestFrameworkB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
