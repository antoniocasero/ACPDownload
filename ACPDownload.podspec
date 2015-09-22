Pod::Spec.new do |s|
  s.name         = 'ACPDownload'
  s.version      = '1.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/antoniocasero/ACPDownload'
  s.authors      =  {'Antonio Casero' => 'anto.casero@gmail.com'}
  s.summary      = 'ACPDownload provides a download indicator with 4 different states. '
  s.screenshots      = ["http://antoniocasero.github.io/ACPDownload/screenshots/acpdownload-gif.gif",
                        "http://antoniocasero.github.io/ACPDownload/screenshots/acpdownload-screenshot-1.png"]
# Source Info
  s.platform     =  :ios, '7.0'
  s.source           = { :git => "https://github.com/antoniocasero/ACPDownload.git", :tag => s.version.to_s }
  s.source_files = 'ACPDownload'
  s.requires_arc = true
  


end