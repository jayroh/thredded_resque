require 'rails/generators/base'

module ThreddedResque
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      # source_root File.expand_path('../templates', __FILE__)

      def add_worker_to_procfile
        append_file 'Procfile', "worker: bundle exec rake environment resque:work QUEUE='*'"
      end
    end
  end
end
