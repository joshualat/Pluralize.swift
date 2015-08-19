#
# Be sure to run `pod lib lint Pluralize.swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Pluralize.swift"
  s.version          = "1.0"
  s.summary          = "Great Swift String Pluralize Extension"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "case-insensitive, tons of rules for irregular nouns (plural form), supports uncountable nouns, allows dynamic addition of rules"

  s.homepage         = "https://github.com/joshualat/Pluralize.swift"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Joshua Arvin Lat" => "unknown" }
  s.source           = { :git => "https://github.com/joshualat/Pluralize.swift.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pluralize/*'
  s.resource_bundles = {
    'Pluralize.swift' => ['Pod/Assets/*.png']
  }
end
