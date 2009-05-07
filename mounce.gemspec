# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mounce}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Bair"]
  s.date = %q{2009-05-07}
  s.default_executable = %q{mounce}
  s.description = %q{Mounce will post your current itunes track to Presently.}
  s.email = %q{adam@intridea.com}
  s.executables = ["mounce"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "bin/mounce",
    "lib/mounce.rb",
    "spec/mounce.yml",
    "spec/mounce_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://www.github.com/adambair/mounce}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Music annOUNCEr for Presently}
  s.test_files = [
    "spec/mounce_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubyosa>, [">= 0.4.0"])
    else
      s.add_dependency(%q<rubyosa>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<rubyosa>, [">= 0.4.0"])
  end
end
