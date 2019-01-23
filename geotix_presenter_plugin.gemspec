
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "geotix_presenter_plugin/version"

Gem::Specification.new do |spec|
  spec.name          = "geotix_presenter_plugin"
  spec.version       = '0.0.1'
  spec.authors       = ["GeoTix"]
  spec.email         = ["development@geotix.com"]

  spec.summary       = "A plugin to add GeoTix brand theme to presenters"
  spec.homepage      = 'http://github.com/mynorth/geotix_presenters_plugin'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
