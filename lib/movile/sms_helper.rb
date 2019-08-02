module Movile
  class SmsHelper
    def initialize(*)
      @options = {}
      @options['Content-Type'] = 'application/json'
    end

    def base_api_url
      'https://api-messaging.movile.com/v1/send-sms'.freeze
    end

    def report_api_url
      'https://api-messaging.movile.com/v1/sms-status?id='.freeze
    end

    def bulk_api_url
      'https://api-messaging.movile.com/v1/send-bulk-sms'.freeze
    end
  end
end
