require 'rubygems'
require 'bundler'
require 'coveralls/rake/task'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

task :test_gems do
  ['pocketsphinx-ruby', 'fest'].each do |gem|
    root = Bundler.rubygems.find_name(gem).first.full_gem_path
    Dir.chdir(root)
    system 'rake', 'spec'
  end
end

Coveralls::RakeTask.new
task test_gems_with_coveralls: [:test_gems, :spec,
                                :features, 'coveralls:push']
task default: :test_gems_with_coveralls
