#!/usr/bin/env rake

require 'rubygems'
require 'bundler'
require 'rspec/core/rake_task'

task :default => 'foodcritic'

RSpec::Core::RakeTask.new

desc "Runs foodcritic linter"
task :foodcritic do
  if Gem::Version.new("1.9.2") <= Gem::Version.new(RUBY_VERSION.dup)
    sh "foodcritic --epic-fail any ./"
  else
    puts "WARN: foodcritic run is skipped as Ruby #{RUBY_VERSION} is < 1.9.2."
  end
end

desc "Runs knife cookbook test"
task :knife do
  sh "knife cookbook test cookbook --verbose --all --config test/.chef/knife.rb --cookbook-path ./"
end
