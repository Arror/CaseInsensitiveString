Pod::Spec.new do |s|
  s.name = 'CaseInsensitiveString'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'CaseInsensitive String.'
  s.homepage = 'https://github.com/Arror/CaseInsensitiveString'
  s.authors = { 'Arror' => 'hallo.maqiang@gmail.com' }
  s.source = { git: 'https://github.com/Arror/CaseInsensitiveString.git', tag: s.version }
  s.source_files = 'Sources/*.swift'
  s.ios.deployment_target = '8.0'
end
