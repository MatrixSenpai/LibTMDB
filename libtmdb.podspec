Pod::Spec.new do |spec|
  spec.name         = 'libtmdb'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/MatrixSenpai/LibTMDB'
  spec.authors      = { 'MatrixSenpai' => 'math.matrix@icloud.com' }
  spec.summary      = 'TMDB API Wrapper'
  spec.source       = { :git => 'https://github.com/MatrixSenpai/LibTMDB.git', :tag => spec.version.to_s }
  spec.source_files = 'Sources/libtmdb/**/*.swift'
  
  spec.dependency 'RxSwift'
end
