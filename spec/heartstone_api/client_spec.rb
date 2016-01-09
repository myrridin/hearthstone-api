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
end