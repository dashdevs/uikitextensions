#
# Be sure to run `pod lib lint UIKitExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DDUIKitExtensions'
  s.version          = '0.11.2'
  s.summary          = 'Helpful set of homemade UIKit extensions'

  s.homepage         = 'http://dashdevs.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dashdevs llc' => 'hello@dashdevs.com' }
  s.source           = { :git => 'https://github.com/dashdevs/uikitextensions.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.ios.public_header_files = 'UIKitExtensions/*.h'

  s.frameworks = 'UIKit'
  s.swift_version = '4.2'

  s.default_subspec = :none

  s.subspec 'CGSize' do |ss|
    ss.source_files = 'Sources/CGSizeExtension/CGSize+DDExtensions.swift'
  end

  s.subspec 'UIColor' do |ss|
    ss.source_files = 'Sources/UIColorExtension/UIColor+DDExtensions.swift'
  end

  s.subspec 'UIImage' do |ss|
    ss.source_files = 'Sources/UIImageExtension/UIImage+DDExtensions.swift'
  end

  s.subspec 'UINavigationController' do |ss|
    ss.source_files = 'Sources/UINavigationControllerExtension/UINavigationController+DDExtensions.swift'
  end

  s.subspec 'UITableView' do |ss|
    ss.source_files = 'Sources/UITableViewExtension/UITableView+DDExtensions.swift'
  end

  s.subspec 'UIView' do |ss|
    ss.source_files = 'Sources/UIWiewExtension/UIView+DDExtensions.swift'
  end

  s.subspec 'UIViewController' do |ss|
    ss.source_files = 'Sources/UIViewControllerExtension/UIViewController+DDExtensions.swift'
  end

  s.subspec 'UITextField' do |ss|
    ss.source_files = 'Sources/UITextFieldExtension/UITextField+DDExtensions.swift'
  end

  s.subspec 'UIApplication' do |ss|
    ss.source_files = 'Sources/UIApplicationExtension/UIApplication+DDExtensions.swift'
  end

  s.subspec 'UIKit+Sketch' do |ss|
    ss.source_files = 'UIKitExtensions/CALayer+DDExtensions.swift', 'UIKitExtensions/NSAttributedString+DDExtensions.swift', 'UIKitExtensions/UIScreen+DDExtensions.swift'
  end
  
  s.subspec 'PaddedLabel' do |ss|
    ss.source_files = 'UIKitExtensions/PaddedLabel.swift'
  end
end
