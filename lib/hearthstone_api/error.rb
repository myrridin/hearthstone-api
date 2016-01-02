module HearthstoneApi
  class Error < StandardError; end
  class KeyError < HearthstoneApi::Error; end
end