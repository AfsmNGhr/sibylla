require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

task :spec do
  ['pocketsphinx-ruby', 'fest', 'sibylla'].each do |gem|
    root = Bundler.rubygems.find_name(gem).first.full_gem_path
    Dir.chdir(root)
    gem.eql?('sibylla') ? system('rspec') : system('rake', 'spec')
  end
end

task default: :spec
