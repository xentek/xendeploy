require 'rubygems'
 
SPEC = Gem::Specification.new do |s|
  s.name = 'xendeploy'
  s.version = '0.8'
  
  s.authors = ['Eric Marden']
  s.description = <<-EOF
Building on the backs of Capistrano and Deprec, this is a collection of Recipes and other customizations for managing non-rails applications, specifically WordPress, WordPress-MU, and BuddyPress.
EOF
  s.email = 'ruby@xentek.net'
  s.homepage = 'http://xentek.net/'
  s.summary = 'custom recipes for capistrano+deprec'
 
  s.require_paths = ['lib']
  s.add_dependency('capistrano', '> 2.5.0')
  s.add_dependency('deprec', '> 2.0.0')
  candidates = Dir.glob("{bin,docs,lib}/**/*")
  candidates.concat(%w(README.textile))
  s.files = candidates.delete_if do |item|
    item.include?("CVS") || item.include?("rdoc")
  end
  s.default_executable = "xenify"
  s.executables = ["xenify"]
end