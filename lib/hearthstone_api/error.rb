module HearthstoneApi
  class Error < StandardError; end
  class KeyError < Error; end
  class EndpointError < Error; end
end