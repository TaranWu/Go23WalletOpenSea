#
# Be sure to run `pod lib lint Go23WalletOpenSea.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Go23WalletOpenSea'
  s.version          = '1.0.0'
  s.summary          = 'Go23Wallet OpenSea functionality'

  s.description      = 'OpenSea functionality'

  s.homepage         = 'https://github.com/TaranWu/Go23WalletOpenSea'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Taran' => 'NA' }
  s.source           = { :git => 'https://github.com/TaranWu/Go23WalletOpenSea.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version    = '5.0'
  s.platform         = :ios, "13.0"

  s.source_files = 'Go23WalletOpenSea/Classes/**/*'
  
  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
  # s.resource_bundles = {
  #   'Go23WalletOpenSea' => ['Go23WalletOpenSea/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.dependency 'Go23WalletAddress'
  s.dependency 'Go23WalletCore'
  s.dependency 'PromiseKit'
  s.dependency 'SwiftyJSON', '5.0.0'
end
