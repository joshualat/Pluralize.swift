#
# Be sure to run `pod lib lint Pluralize.swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Pluralize.swift"
  s.version          = '1.1'
  s.summary          = "Great Swift String Pluralize Extension"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "case-insensitive, tons of rules for irregular nouns (plural form), supports uncountable nouns, allows dynamic addition of rules"

  s.homepage         = "https://github.com/sammy-SC/Pluralize.swift.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Joshua Arvin Lat" => "unknown" }
  s.source           = { :git => "https://github.com/sammy-SC/Pluralize.swift.git", :tag => '1.1'}

  s.requires_arc = true
  s.swift_version = '5.0'
  s.watchos.deployment_target = '2.0'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'Pluralize/*.swift'
end
