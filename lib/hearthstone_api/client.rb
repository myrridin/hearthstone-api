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
      HearthstoneApi::Info.from_json(fetch_json('info'))
    end

    def find_cards(name, collectible: false, locale: 'enUS')
      json = fetch_json("cards/#{name}", {collectible: collectible, locale: locale})
      json.map { |el| HearthstoneApi::Card.from_json(el) }
    end

    def fetch_json(endpoint, params = {})
      url = "#{BASE_ENDPOINT}#{endpoint}?#{URI.encode_www_form(params)}"

      begin
        res = RestClient.get url, {'X-Mashape-Key' => api_key}
      rescue RestClient::ResourceNotFound => e
        msg = JSON.parse(e.http_body)['message'] rescue nil
        return [] if msg =~ /not found/
        raise HearthstoneApi::EndpointError.new 'That endpoint does not seem to exist.'
      rescue RestClient::Forbidden
        raise HearthstoneApi::KeyError.new "403 forbidden. Please check your Mashape API key. Current key #{api_key}"
      end

      JSON.parse(res)
    end
  end
end