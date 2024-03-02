require_relative 'lib/jagger_unretiring_test/version'

Gem::Specification.new do |spec|
  spec.name          = "jagger_unretiring_test"
  spec.version       = JaggerUnretiringTest::VERSION
  spec.authors       = ["jagger"]
  spec.email         = ["1336098842@qq.com"]

  spec.summary       = %q{jagger_unretiring_test} 
  spec.description   = %q{jagger_unretiring_test description} 
  spec.homepage      = "https://github.com/superjagger/jagger_unretiring_test" 
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org" 

  spec.metadata["homepage_uri"] = "https://github.com/superjagger/jagger_unretiring_test" 
  spec.metadata["source_code_uri"] = "https://github.com/superjagger/jagger_unretiring_test.git" 
  spec.metadata["changelog_uri"] =  "https://github.com/superjagger/jagger_unretiring_test/blob/main/CHANGELOG.md" 

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "http_crawler", "~> 3.1"
  spec.add_dependency "jagger_dreamlike_test", "~> 0.1"
end
