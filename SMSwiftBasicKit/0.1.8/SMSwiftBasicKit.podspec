#
# Be sure to run `pod lib lint SMSwiftBasicKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMSwiftBasicKit'
  s.version          = '0.1.8'
  s.summary          = '尚美 swift基础组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  尚美 swift基础组件, 基础UI、工具等
                       DESC

  s.homepage         = 'git@github.com:mushanlianshi/SMSwiftBasicKit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liu bin' => 'liu_bin_home@163.com' }
  s.source           = { :git => 'git@github.com:mushanlianshi/SMSwiftBasicKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = ['5']
  s.resource = 'SMSwiftBasicKit/Resources/BLTSwiftUIKit.bundle'

  #s.source_files = 'SMSwiftBasicKit/Classes/**/*'
  
  s.subspec 'NameSpace' do |nameSpace|
      nameSpace.source_files = 'SMSwiftBasicKit/Classes/NameSpace/*.swift'
  end
  
  s.subspec 'Protocol' do |extension|
    extension.source_files = 'SMSwiftBasicKit/Classes/Protocol/*.swift'
  end
  
  s.subspec 'Extension' do |extension|
    extension.source_files = 'SMSwiftBasicKit/Classes/Extension/*.swift', 'SMSwiftBasicKit/Classes/Extension/UIKit/*.swift'
    extension.dependency 'SMSwiftBasicKit/NameSpace'
    extension.dependency 'SMSwiftBasicKit/Protocol'
    extension.dependency 'SMSwiftBasicKit/Util'
    extension.dependency 'SnapKit'
  end
  
  s.subspec 'Util' do |util|
      util.source_files = 'SMSwiftBasicKit/Classes/Util/*.swift'
      util.dependency 'SMSwiftBasicKit/Protocol'
      util.dependency 'SnapKit'
      util.dependency 'SMSwiftBasicKit/NameSpace'
  end

  
  s.subspec 'ListView' do |listView|
    listView.source_files = 'SMSwiftBasicKit/Classes/ListView/*.swift'
    listView.dependency 'SMSwiftBasicKit/NameSpace'
    listView.dependency 'SMSwiftBasicKit/Extension'
    listView.dependency 'SnapKit'
  end
  
  s.subspec 'View' do |view|
      view.source_files = 'SMSwiftBasicKit/Classes/View/*.swift','SMSwiftBasicKit/Classes/View/NoticeBar/*.swift'
      view.dependency 'SMSwiftBasicKit/NameSpace'
      view.dependency 'SMSwiftBasicKit/Extension'
      view.dependency 'SMSwiftBasicKit/Util'
      view.dependency 'SMSwiftBasicKit/ListView'
      view.dependency 'JXMarqueeView'
      view.dependency 'SnapKit'
      view.dependency 'Kingfisher'
  end
  
  s.subspec 'Alert' do |alert|
      alert.source_files = 'SMSwiftBasicKit/Classes/Alert/*.swift'
      alert.dependency 'SMSwiftBasicKit/Extension'
  end
  
  s.subspec 'Combine' do |combile|
      combile.source_files = 'SMSwiftBasicKit/Classes/Combine/*.swift'
      combile.dependency 'SMSwiftBasicKit/Extension'
  end
  
  s.subspec 'SwiftUI' do |swiftUI|
      swiftUI.source_files = 'SMSwiftBasicKit/Classes/SwiftUI/**/*'
      swiftUI.dependency 'SMSwiftBasicKit/Extension'
      swiftUI.dependency 'SMSwiftBasicKit/NameSpace'
  end
  
end
