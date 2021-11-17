require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                   = 'R5VideoView'
  s.version                = package['version']
  s.summary                = package['description']
  s.description            = package['description']
  s.homepage               = package['homepage']
  s.license                = package['license']
  s.author                 = package['author']
  s.source                 = { :git => 'https://github.com/shoeman22/react-native-red5pro.git', :branch => 'master' }

  s.platform               = :ios, '9.0'
  s.ios.deployment_target  = '8.0'

  s.preserve_paths         = 'LICENSE', 'package.json', "R5Streaming.framework"
  s.source_files           = '**/*.{h,m}'
  s.exclude_files          = 'example/**/*'
  s.dependency               'React'
  s.vendored_frameworks    = "R5Streaming.framework"
end
