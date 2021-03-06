$:.push File.expand_path("../lib", __FILE__)

require "graph_ql/version"

Gem::Specification.new do |s|
  s.name        = 'graphql'
  s.version     = GraphQL::VERSION
  s.date        = '2015-03-06'
  s.summary     = "GraphQL"
  s.description = "A GraphQL adapter for Ruby"
  s.homepage    = 'http://github.com/rmosolgo/graphql-ruby'
  s.authors     = ["Robert Mosolgo"]
  s.email       = ['rdmosolgo@gmail.com']
  s.license     = "MIT"
  s.required_ruby_version = '>= 2.1.0' # bc optional keyword args

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "readme.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_runtime_dependency "activesupport", "~> 4"
  s.add_runtime_dependency "parslet", "~> 1.6"

  s.add_development_dependency "codeclimate-test-reporter", '~>0.4'
  s.add_development_dependency "pry", "~> 0.10"
  s.add_development_dependency "guard", "~> 2.12"
  s.add_development_dependency "guard-bundler", "~> 2.1"
  s.add_development_dependency "guard-minitest", "~> 2.4"
  s.add_development_dependency "minitest", "~> 5"
  s.add_development_dependency "minitest-focus", "~> 1.1"
  s.add_development_dependency "minitest-reporters", "~>1.0"
  s.add_development_dependency "rake", "~> 10.4"
end
