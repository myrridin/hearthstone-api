module HearthstoneApi
  class Info
    attr_accessor :patch, :classes, :sets, :types, :factions, :qualities, :races, :locales

    def self.from_json(json)
      info = HearthstoneApi::Info.new
      info.patch = json['patch']
      info.classes = json['classes']
      info.sets = json['sets']
      info.types = json['types']
      info.factions = json['factions']
      info.qualities = json['qualities']
      info.races = json['races']
      info.locales = json['locales']
      info
    end
  end
end