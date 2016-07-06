module Dynamo
  module Model
      # this configuration class has all attributes to configure
      # the api url and authorizations params
    class Configuration
      # principal attributes to execute an http request
      attr_accessor :access_key_id, :secret_access_key, :region, :env

      # Configures global settings for ModelApi
      #   ModelApi.configure do |config|
      #     config.key = "secret"
      #     config.uuid = "secret"
      #     config.env = :development
      #     config.url = {
      #       development: "http://localhost:3000",
      #       test: "http://test-domain.com.br",
      #       production: "http://domain.com.br/api/v1"
      #     }
      #   end
      def self.configure(&_block)
        yield(config())
      end

      # Global settings for Dynamo::Model
      def self.config
        @config ||= Dynamo::Model::Configuration.new
      end

      # constructor that set default values
      def initialize
        self.access_key_id = ''
        self.secret_access_key = ''
        self.region = ''
        self.env = :development
      end
    end
  end
end