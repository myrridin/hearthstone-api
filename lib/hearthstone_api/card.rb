module HearthstoneApi
  class Card
    attr_accessor :card_id, :name

    def self.from_json(json)
      card = HearthstoneApi::Card.new
      card.name = json['name']
      card
    end
  end
end