#
# Be sure to run `pod lib lint OpenSSLTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenSSLTest'
  s.version          = '0.1.0'
  s.summary          = 'A short description of OpenSSLTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yshrsmz'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yshrsmz' => 'the.phantom.bane@gmail.com' }
  s.source           = { :git => 'https://github.com/yshrsmz/OpenSSLTest.git', :tag => s.version.to_s }
  s.module_name = 'OpenSSLTest'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OpenSSLTest/Classes/**/*.swift', 'OpenSSLTest/OpenSSL/include/**/*.h', 'OpenSSLTest/OpenSSL/include/shim.h'
  s.header_dir = 'openssl'
  s.header_mappings_dir = 'OpenSSLTest/OpenSSL/include'
  s.public_header_files = 'OpenSSLTest/OpenSSL/include/openssl/*.h', 'OpenSSLTest/OpenSSL/include/shim.h'
  s.preserve_paths = 'OpenSSLTest/OpenSSL/**/*', 'OpenSSLTest/OpenSSL/include/module.modulemap'
  s.vendored_libraries = 'OpenSSLTest/OpenSSL/lib/libcrypto.a', 'OpenSSLTest/OpenSSL/lib/libssl.a'
  
  s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '$(inherited) ${SRCROOT}/OpenSSLTest/OpenSSL/**',
      'HEADER_SEARCH_PATHS' => '$(inherited) ${SRCROOT}/OpenSSLTest/OpenSSL/include/openssl ${SRCROOT}/OpenSSLTest/OpenSSL/include',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'SWIFT_VERSION' => '4.2'
  }
end
