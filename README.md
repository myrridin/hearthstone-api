# HearthstoneApi

`hearthstone_api` is a gem that wraps around the API provided by hearthstoneapi.com. This gem is not sponsored or endorsed by hearthstoneapi.com or Blizzard Entertainment.

From the API provider:

```
This Hearthstone API provides up to date Hearthstone data pulled directly from the game. It has endpoints for all the card data, including images, card backs and more.

Blizzard has not officially released any Hearthstone API's yet so I decided to make this API to fill that gap for the time being. I will update the data everytime the game data changes.
```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hearthstone_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hearthstone_api

## Usage

You can interact with the hearthstoneapi.com API with a `HearthstoneApi::Client`

```ruby
client = HearthstoneApi::Client.new
```

### Endpoints

#### Info

Get basic info about the classes, sets and other information available in the API.

```ruby
client = HearthstoneApi::Client.new
info = client.get_info
puts info.sets
# => Basic
#    Classic
#    Credits
#    Naxxramas
#    Debug
#    Goblins vs Gnomes
#    Missions
#    Promotion
#    Reward
#    System
#    Blackrock Mountain
#    Hero Skins
#    Tavern Brawl
#    The Grand Tournament
#    The League of Explorers
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/myrridin/hearthstone_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

