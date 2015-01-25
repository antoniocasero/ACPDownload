Pod::Spec.new do |s|
  s.name         = 'ACPDownload'
  s.version      = '1.0.0'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/antoniocasero/ACPDownload'
  s.authors      =  {'Antonio Casero' => 'anto.casero@gmail.com'}
  s.summary      = 'ACPDownload provides a download indicator with 4 different states, valid for any view size. Easy to customize and configure.'

# Source Info
  s.platform     =  :ios, '7.1'
  s.source           = { :git => "https://github.com/antoniocasero/ACPDownload.git", :tag => s.version.to_s }
  s.source_files = 'ACPDownload'
  s.requires_arc = true
  
# Pod Dependencies

end