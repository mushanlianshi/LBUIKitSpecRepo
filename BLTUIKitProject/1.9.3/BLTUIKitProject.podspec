#
# Be sure to run `pod lib lint HelloRepo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLTUIKitProject'
  s.version          = '1.9.3'
  s.summary          = ' BLTUIKitProject is ui kit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  this is baletu UIKit , has common alert, noticebar ...
                       DESC

  s.homepage         = 'http://liubin@120.55.38.138:7990/scm/app/bltuikitframework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mushanlianshi' => 'liu_bin_home@163.com' }
#  s.source           = { :git => 'ssh://git@1.117.247.154:7999/app/bltuikitframework.git', :tag => s.version, :submodules => true }
  s.source           = { :git => 'git@github.com:mushanlianshi/BLTUIKitProject.git', :tag => s.version, :submodules => true }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BLTUIKitProject/BLTUIKit/BLTUI.h'
  s.dependency 'BLTBasicUIKit'
# 这种事使用图片的  现在使用下面bundle的方式
#   s.resource_bundles = {
#     'BLTUIKitProject' => ['BLTUIKitProject/Resources/*.png']
#   }
   s.resource = 'BLTUIKitProject/Resources/BLTUIKitBundle.bundle'
   
   #子目录
   s.subspec 'Header' do |ss|
    ss.source_files = 'BLTUIKitProject/BLTUIKit/Header/*.{h,m}'
   end
   
   s.subspec 'Util' do |ss|
    ss.dependency 'BLTUIKitProject/Header'
    ss.source_files = 'BLTUIKitProject/BLTUIKit/Util/*.{h,m}' #Category下所有匹配的文件
   end

   s.subspec 'Category' do |ss|
    ss.dependency 'GKPhotoBrowser', '~> 2.6.3'
    ss.dependency 'BLTUIKitProject/Header'
    ss.dependency 'BLTUIKitProject/Util'
    ss.source_files = 'BLTUIKitProject/BLTUIKit/Category/*.{h,m}' #Category下所有匹配的文件
   end

   s.subspec 'NotificationBarView' do |ss|
    ss.source_files = 'BLTUIKitProject/BLTUIKit/NotificationBarView/*.{h,m}'
   end

   s.subspec 'Alert' do |ss|
    ss.dependency 'BLTUIKitProject/Category'
    ss.dependency 'BLTUIKitProject/Header'
    ss.source_files = 'BLTUIKitProject/BLTUIKit/Alert/*.{h,m}'
   end
   
   s.subspec 'UploadImageKit' do |ss|
    ss.dependency 'BLTUIKitProject/Category'
    ss.dependency 'BLTUIKitProject/Header'
    ss.dependency 'TZImagePickerController'
    ss.source_files = 'BLTUIKitProject/BLTUIKit/ImageUploadPreviewKit/**/*.{h,m}'
   end
   
   s.subspec 'BLTTableViewCell' do |ss|
    ss.dependency 'BLTUIKitProject/Category'
    ss.dependency 'BLTUIKitProject/Header'
    ss.dependency 'Masonry'
    ss.resource = 'BLTUIKitProject/BLTUIKit/BLTTableViewCell/Source/BLTTableViewCellSource.bundle'
    ss.source_files = 'BLTUIKitProject/BLTUIKit/BLTTableViewCell/*.{h,m}'
   end
   
   s.subspec 'BLTMenu' do |ss|
    ss.dependency 'BLTUIKitProject/Category'
    ss.dependency 'BLTUIKitProject/Header'
    ss.dependency 'BLTUIKitProject/BLTTableViewCell'
    ss.dependency 'Masonry'
    ss.source_files = 'BLTUIKitProject/BLTUIKit/BLTMenu/*.{h,m}', 'BLTUIKitProject/BLTUIKit/BLTMenu/BLTTableMenu/*.{h,m}'
   end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
