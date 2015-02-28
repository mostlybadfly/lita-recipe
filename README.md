# lita-recipe

A Lita handler that will reply with a link to a random trending recipe on Food2Fork.

## Installation

Add lita-recipe to your Lita instance's Gemfile:

``` ruby
gem "lita-recipe"
```


## Configuration

An API Key from F2F will be required, more info at: http://food2fork.com/about/api

```ruby
Lita.configure do |config|
  config.handlers.recipe.api_key = ENV['F2F_KEY']
end
```

## Usage

  * You: Lita recipe

  * Lita: [http://food2fork.com/view/bbec0d](http://food2fork.com/view/bbec0d)

## License

[MIT](http://opensource.org/licenses/MIT)
