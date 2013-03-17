require 'resque/server'
require 'thredded_resque'
require 'rails'

module ThreddedResque
  class Engine < Rails::Engine
    initializer 'thredded_resque.extend_mailers' do |app|
      app.config.to_prepare do
        PostMailer.send(:include, Resque::Mailer)
        TopicMailer.send(:include, Resque::Mailer)
      end
    end
  end
end
