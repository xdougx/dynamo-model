module Dynamo
  module Model
    class Client
      attr_accessor :dynamodb, :config

      def initialize(path)
        @config = Configuration.configure do |conf|
          config.access_key_id = ENV["aws_access_key_id"]
          config.secret_access_key = ENV["aws_secret_access_key"]
          config.region = ENV["aws_region"]
        end
        setup
      end

      def setup
        @dynamodb = Aws::DynamoDB::Client.new(
          region: @config.region,
          access_key_id: @config.access_key_id,
          secret_access_key: @configsecret_access_key
        )
      end
    end
  end
end