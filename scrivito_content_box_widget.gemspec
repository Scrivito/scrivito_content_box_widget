$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_content_box_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scrivito_content_box_widget"
  s.version     = ScrivitoContentBoxWidget::VERSION
  s.authors     = ["Scrivito"]
  s.email       = ["support@scrivito.com"]
  s.homepage    = "https://www.scrivito.com"

  s.summary     = "Scrivito Widget to add a content box with adjustable background color."
  s.description = "Scrivito Widget to add a content box with adjustable background color."
  s.license     = "LGPL-3.0"


  s.files = Dir[
    "{app,lib}/**/*",
    "LICENSE",
    "Rakefile",
    "README.md"
  ]

  s.add_dependency 'scrivito_sdk'
end
