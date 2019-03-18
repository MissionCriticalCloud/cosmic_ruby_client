require 'test/unit'
require 'cosmic_ruby_client'

class SampleTest < Test::Unit::TestCase

  URL = 'http://192.168.22.61:8080/client/api/'
  APIKEY = ''
  SECKEY = ''

  def test_listNetworkOfferings
    client = CosmicRubyClient::Client.new(URL, APIKEY, SECKEY, false)
    client.listNetworkOfferings()
  end

  def test_badURL
    client = CosmicRubyClient::Client.new('http://192.168.56.10:8081/client/api', APIKEY, SECKEY, false)
    assert_raise NoMethodError do
      client.listNetworkOfferings()
    end
  end
end
