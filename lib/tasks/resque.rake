require 'resque/tasks'

task 'resque:setup' => :environment do
  ENV['QUEUE'] ||= '*'
  Resque.before_fork = Proc.new { ActiveRecord::Base.establish_connection }
end

namespace :resque do
  desc 'let resque workers always load the rails environment'
  task setup: :environment do
  end
end
