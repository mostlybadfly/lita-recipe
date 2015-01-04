require "spec_helper"
require "uri"

describe Lita::Handlers::Recipe, lita_handler: true do
  it { is_expected.to route_command("recipe").to(:recipe) }

  describe '#recipe' do
    it "replies with a random recipe" do
      send_command("recipe")
      expect(replies.last).to match(URI.regexp)
    end
  end
end

