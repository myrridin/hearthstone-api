require 'spec_helper'

describe HearthstoneApi do
  it 'has a version number' do
    expect(HearthstoneApi::VERSION).not_to be nil
  end

  it 'passes a sanity test' do
    expect(true).to be_truthy
  end
end
