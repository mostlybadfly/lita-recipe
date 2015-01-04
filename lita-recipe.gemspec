Gem::Specification.new do |spec|
  spec.name          = "lita-recipe"
  spec.version       = "0.0.2"
  spec.authors       = ["Daniel Nunez"]
  spec.email         = ["reachdanielnunez@gmail.com"]
  spec.description   = %q{A lita handler that will display a random trending recipe}
  spec.summary       = %q{Pulls top 30 trending from Food2Fork and replies with URL}
  spec.homepage      = "https://github.com/mostlybadfly/lita-recipe"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
