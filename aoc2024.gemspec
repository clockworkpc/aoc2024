lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aoc_2024/version"

Gem::Specification.new do |spec|
  spec.name          = "aoc_2024"
  spec.version       = Aoc2024::VERSION
  spec.authors       = ["Alexander Garber"]
  spec.email         = ["clockworkpc@gmail.com"]

  spec.summary       = "Aoc2024 summary"
  spec.description   = "Aoc2024 description"
  spec.homepage      = "http://www.ruby-template.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.ruby-template.com"
  spec.metadata["changelog_uri"] = "http://www.ruby-template.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
