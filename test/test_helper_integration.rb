require "test_helper"
require "capybara/rails"

Capybara.default_driver = :webkit
Capybara.server_port = 50420

module ActionController
  
  # If you want to be persnikity about host/port matching backend webkit_server.
  module Integration
    class Session
      DEFAULT_HOST = '127.0.0.1'
      def host
        DEFAULT_HOST
      end
      def reset_with_capybara_webkit!
        reset_without_capybara_webkit!
        self.host = DEFAULT_HOST
      end
      alias_method_chain :reset!, :capybara_webkit
      def url_for_with_capybara_webkit(options)
        options[:host] = host
        options[:port] = Capybara.server_port
        url_for_without_capybara_webkit(options)
      end
      alias_method_chain :url_for, :capybara_webkit
    end
  end
  
  class IntegrationTest
    include Capybara::DSL
  end
  
end

# If you want to use transitional fixtures and force all threads to 1 DB connection.
class ActiveRecord::Base
  def self.connection
    @@shared_connection ||= retrieve_connection
  end
end

