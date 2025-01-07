#
# Be sure to run `pod lib lint BLTSwiftUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLTSwiftUIKit'
  s.version          = '1.5.0'
  s.summary          = 'Baletu Swift UIKit Framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  this is Baletu UIKit, make coding convenience
                       DESC

  s.homepage         = 'https://github.com/mushanlianshi/BLTSwiftUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mushanlianshi' => 'liu_bin_home@163.com' }
  s.source           = { :git => 'git@github.com:mushanlianshi/BLTSwiftUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  
#  s.frameworks    = 'Foundation', 'UIKit', 'Photos', 'AVFoundation', 'AVKit'
#  s.requires_arc  = true
  s.swift_version = ['4.2', '5']
  s.resource = 'BLTSwiftUIKit/Resources/BLTSwiftUIKit.bundle'
  #不使用静态库
#  s.static_framework = false
#  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
#  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
#  s.source_files = 'BLTSwiftUIKit/Classes/**/*.swift'
  
  s.subspec 'NameSpace' do |nameSpace|
      nameSpace.source_files = 'BLTSwiftUIKit/Classes/NameSpace/*.swift'
  end
  
  s.subspec 'Protocol' do |extension|
    extension.source_files = 'BLTSwiftUIKit/Classes/Protocol/*.swift'
  end
  
  s.subspec 'Extension' do |extension|
    extension.source_files = 'BLTSwiftUIKit/Classes/Extension/*.swift', 'BLTSwiftUIKit/Classes/Extension/UIKit/*.swift'
    extension.dependency 'BLTSwiftUIKit/NameSpace'
    extension.dependency 'BLTSwiftUIKit/Protocol'
    extension.dependency 'BLTSwiftUIKit/Util'
    extension.dependency 'SnapKit'
  end
  
  s.subspec 'Util' do |util|
      util.source_files = 'BLTSwiftUIKit/Classes/Util/*.swift'
      util.dependency 'BLTSwiftUIKit/Protocol'
      util.dependency 'SnapKit'
      util.dependency 'BLTSwiftUIKit/NameSpace'
  end

  
  s.subspec 'ListView' do |listView|
    listView.source_files = 'BLTSwiftUIKit/Classes/ListView/*.swift'
    listView.dependency 'BLTSwiftUIKit/NameSpace'
    listView.dependency 'BLTSwiftUIKit/Extension'
    listView.dependency 'SnapKit'
  end
  
  s.subspec 'View' do |view|
      view.source_files = 'BLTSwiftUIKit/Classes/View/*.swift','BLTSwiftUIKit/Classes/View/NoticeBar/*.swift'
      view.dependency 'BLTSwiftUIKit/NameSpace'
      view.dependency 'BLTSwiftUIKit/Extension'
      view.dependency 'BLTSwiftUIKit/Util'
      view.dependency 'BLTSwiftUIKit/ListView'
      view.dependency 'JXMarqueeView'
      view.dependency 'SnapKit'
      view.dependency 'Kingfisher'
  end
  
  s.subspec 'Alert' do |alert|
      alert.source_files = 'BLTSwiftUIKit/Classes/Alert/*.swift'
      alert.dependency 'BLTSwiftUIKit/Extension'
  end
  
#  s.app_spec do |app_spec|
#      app_spec.source_files = 'BLTSwiftUIKit.m'
#      app_spec.dependency 'SDWebImage'
#  end
  
  # s.resource_bundles = {
  #   'BLTSwiftUIKit' => ['BLTSwiftUIKit/Assets/*.png']
  # }

#   s.public_header_files = 'BLTSwiftUIKit/Classes/*.swift'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
