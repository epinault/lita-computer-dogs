Gem::Specification.new do |spec|
  spec.name          = "lita-computer-dogs"
  spec.version       = "0.1.0"
  spec.authors       = ["epinault"]
  spec.email         = ["emmanuel.pinault@zumobi.com"]
  spec.description   = "This plugin just display a dog with a computer image as seen on http://computerdogs.tumblr.com/"
  spec.summary       =  "computer dogs lita plugin"
  spec.homepage      = "http://github.com/epinault/lita-computer-dogs"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.4"
  spec.add_runtime_dependency "curb", ">= 0.8"
  spec.add_runtime_dependency "nokogiri", ">= 1.6"
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end