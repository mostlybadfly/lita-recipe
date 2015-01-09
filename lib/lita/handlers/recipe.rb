require 'lita'
require 'net/http'
require 'uri'
require 'multi_json'

module Lita
  module Handlers
    class Recipe < Handler
      config :api_key, required: true
      route(/^recipe/, :recipe, command: true, help: { "recipe" => "random recipe" })

      def recipe(response)
        res = Net::HTTP.get_response(URI("http://food2fork.com/api/search?key=#{api_key}&sort=t"))
        top_list = MultiJson.load(res.body)
        response.reply(top_list["recipes"].shuffle.first["f2f_url"])
      end
      private

      def api_key
        config.api_key
      end
 
      Lita.register_handler(Recipe)
    end
  end
end

