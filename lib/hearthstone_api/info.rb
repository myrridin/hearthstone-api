module HearthstoneApi
  class Info
    attr_reader :patch, :classes, :sets, :types, :factions, :qualities, :races, :locales

    def self.from_json(json)
      info = HearthstoneApi::Info.new
    end
  end
end