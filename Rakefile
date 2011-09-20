# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

Hotness::Application.load_tasks

desc "scrape"
task :scrape => :environment do
  Site.all.each do |site|
    site.scrape
  end
end