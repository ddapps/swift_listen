Pod::Spec.new do |s|
  s.name            = 'libwebp'
  s.version         = '0.5.0'
  s.summary         = 'Library to encode and decode images in WebP format.'
  s.homepage        = 'https://developers.google.com/speed/webp/'
  s.author          = 'Google Inc.'
  s.license         = { :type => 'BSD', :file => 'COPYING' }
  s.source          = { :git => 'https://github.com/sopig/libwebp.git', :tag => "#{s.version}" }

  s.compiler_flags  = '-D_THREAD_SAFE'
  s.requires_arc    = false


  s.default_subspec = 'webp'

  s.subspec 'webp' do |webp|
    webp.source_files = 'src/**/*.{h,c}'
  end

end