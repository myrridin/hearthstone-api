require 'spec_helper'

RSpec.describe HearthstoneApi::Client, :vcr do
  let(:client) { HearthstoneApi::Client.new }

  it 'can initialize itself' do
    expect(client).to be_a HearthstoneApi::Client
  end

  describe '#get_info' do
    it 'returns a HearthstoneApi::Info object' do
      info = client.get_info
      expect(info).to be_a HearthstoneApi::Info
    end
  end

  describe '#fetch_json' do
    it 'returns a hash for the info endpoint' do
      expect(client.fetch_json('info')).to be_a Hash
    end

    it 'raises an error if the api key is invalid' do
      client.instance_variable_set('@api_key', 'NOT A REAL KEY')
      expect { client.fetch_json('info') }.to raise_error HearthstoneApi::KeyError
    end
  end
end