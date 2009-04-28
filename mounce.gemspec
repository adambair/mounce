Gem::Specification.new do |s|
  s.name = %q{mounce}
  s.version = "0.0.1"
  s.date = %q{2009-04-27}
  s.authors = ["Adam Bair"]
  s.email = %q{adam@intridea.com}
  s.summary = %q{Music annOUNCEr for Presently}
  s.homepage = %q{http://www.github.com/adambair/mounce}
  s.description = %q{Mounce will post your current itunes track to Presently.}
  s.default_executable = "mounce"
  s.executables = ["mounce"]
  s.files = [ 
    "Rakefile", 
    "README.rdoc", 
    "MIT-LICENSE",
    "mounce.gemspec",
    "bin/mounce", 
    "lib/mounce.rb",
    "tasks/rspec.rake",
    "spec/mounce.yml",
    "spec/mounce_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.add_dependency("rubyosa", [">= 0.4.0"])
end 

