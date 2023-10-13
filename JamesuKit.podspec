Pod::Spec.new do |s|
  s.name = 'JamesuKit'
  s.version = '0.1.0'
  s.license = 'MIT'
  s.summary = 'Useful Development Kit in Swift'
  s.homepage = 'https://github.com/jamesujeon/JamesuKit-Swift'
  s.authors = { 'Jamesu' => 'jamesujeon@gmail.com' }
  s.source = { :git => 'https://github.com/jamesujeon/JamesuKit-Swift.git', :tag => s.version.to_s }

  s.swift_version = '5.5'
  s.ios.deployment_target = '15.0'

  s.source_files = 'Sources/JamesuKit/**/*'
end
