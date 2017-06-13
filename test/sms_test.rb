# test/sms/sms_test.rb
require 'httparty'
require 'movile_sms'
require 'movile_sms/sms'

class SmsTest < Minitest::Test
  def setup
    @sms = SMS.new(username: 'Your User Name', access_token: 'Your Access Token')
  end

  def test_setup
    assert SMS.new(username: 'Your User Name', access_token: 'Your Access Token')
  end

  def test_instance_sms
    assert_instance_of(SMS, @sms)
  end
end
