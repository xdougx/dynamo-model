module Dynamo
  module Model
    class Client
      attr_accessor :dynamodb, :config

      def initialize
        @config = Configuration.configure do |current|
          current.access_key_id = ENV["aws_access_key_id"]
          current.secret_access_key = ENV["aws_secret_access_key"]
          current.region = ENV["aws_region"]
          current
        end
        setup
      end

      def setup
        @dynamodb = Aws::DynamoDB::Client.new(
          region: @config.region,
          access_key_id: @config.access_key_id,
          secret_access_key: @config.secret_access_key
        )
      end
    end
  end
end