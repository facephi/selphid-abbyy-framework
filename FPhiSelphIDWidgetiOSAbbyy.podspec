#
# Be sure to run `pod lib lint FPhiSelphIDWidgetiOSAbbyy.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FPhiSelphIDWidgetiOSAbbyy'
  s.version          = '1.8.1'
  s.summary          = 'Component for OCR and liveness test'
  s.description      = <<-DESC
  Safe digital onboarding solution with the best real time OCR in the market with facial liveness test.
                       DESC

  s.homepage         = 'https://www.facephi.com'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'FacePhi Biometria' => 'developer@facephi.com' }
  s.source           = { :git => 'https://github.com/facephi/selphid-abbyy-framework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.static_framework = true

  s.xcconfig = {
    'ENABLE_BITCODE'                       => 'NO',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386'
  }

  s.ios.resources = [
    'fphi-selphid-widget-resources-selphid-1.0.zip',
    'FPhiSelphIDWidgetiOSResources.bundle'
  ]
  s.ios.vendored_frameworks = 'FPhiSelphIDWidgetiOS.xcframework'

  s.dependency 'FPhiAbbyyRtrSDK'
  s.dependency 'zipzap'

  s.libraries = 'c++', 'z'

end
