require 'rake'
FileList = Rake::FileList

Pod::Spec.new do |s|

  s.name             = 'doppllib'
    s.version          = '0.1.0'
    s.summary          = 'Doppl code framework'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC

    s.homepage         = 'http://doppl.co/'
    s.license          = { :type => 'Apache 2.0' }
    s.authors           = { 'Kevin Galligan' => 'kgalligan@gmail.com' }
    s.source           = { :git => 'https://github.com/doppllib/doppl-gradle.git'}

    s.ios.deployment_target = '8.0'

    s.source_files = FileList["j2objcSrcGenMain/**/*.{h,m,cpp,properites}"].include("dopplDependencyExploded/**/*.{h,m,cpp,properites}").to_ary

    s.public_header_files = FileList["j2objcSrcGenMain/**/*.h"].include("dopplDependencyExploded/**/*.h").exclude(/cpphelp/).exclude(/jni/).to_ary

    s.requires_arc = false
    s.libraries = 'ObjC', 'z', 'sqlite3', 'iconv', 'javax_inject', 'jre_emul', 'jsr305'
    s.frameworks = 'UIKit'

    s.xcconfig = {
     'HEADER_SEARCH_PATHS' => '$(J2OBJC_LOCAL_PATH)/include','LIBRARY_SEARCH_PATHS' => '$(J2OBJC_LOCAL_PATH)/lib'
    }
end