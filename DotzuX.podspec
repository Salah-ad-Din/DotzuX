Pod::Spec.new do |s|
  s.name                = "DotzuX"
  s.summary             = "DotzuX"
  s.homepage            = "https://github.com/DotzuX/DotzuX"
  s.author              = "liman"
  s.license             = "MIT"
  s.source_files        = "Sources", "Sources/**/*.{h,m,swift}"
  s.public_header_files = "Sources/**/*.h"
  s.resources           = "Sources/**/*.{png,xib,storyboard}"
  s.frameworks          = 'UIKit', 'Foundation'
  s.platform            = :ios, "8.0"
  s.requires_arc        = true
  s.source              = {:git => "https://github.com/Salah-ad-Din/DotzuX.git", :branch => 'master', :tag => '0.0.2'}
  s.swift_version       = '4.0'
  s.version             = '0.0.2'
end
