require 'rest-client'
require 'json'

module HearthstoneApi
  class Client
    attr_reader :api_key

    BASE_ENDPOINT = 'https://omgvamp-hearthstone-v1.p.mashape.com/'

    def initialize
      @api_key = ENV['HEARTHSTONE_API_KEY']
      super
    end

    def get_info
      json = fetch_json('info')
      HearthstoneApi::Info.from_json(json)
    end

    def fetch_json(endpoint, params = {})
      url = "#{BASE_ENDPOINT}#{endpoint}?#{URI.encode_www_form(params)}"
      begin
        res = RestClient.get url, {'X-Mashape-Key' => api_key}
      rescue RestClient::Forbidden
        raise HearthstoneApi::KeyError.new "403 forbidden. Please check your Mashape API key. Current key #{api_key}"
      end
      JSON.parse(res)
    end
  end
end