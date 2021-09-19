# frozen_string_literal: true

require_relative "lib/activejob_nats_adapter/version"

Gem::Specification.new do |spec|
  spec.name          = "activejob_nats_adapter"
  spec.version       = ActivejobNatsAdapter::VERSION
  spec.authors       = ["Anna Titomer","Temirlan Narvsky"]
  spec.email         = ["t.narvsky@evrone.com"]

  spec.summary       = "Nats adapter for ActiveJob"
  spec.description   = "Allow to work with ActiveJob via Nats"
  spec.homepage      = "https://github.com/evrone/activejob_nats_adapter"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/evrone/activejob_nats_adapter"
  spec.metadata["changelog_uri"] = "https://github.com/evrone/activejob_nats_adapter/blob/master/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency 'activejob', '>= 4.2', '< 7'
  spec.add_dependency 'nats', '>= 0.11'

  spec.add_development_dependency 'bundler', '>= 2.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
