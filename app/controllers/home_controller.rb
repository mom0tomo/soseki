class HomeController < ApplicationController
  def index
    @proverb = random_pickuped_proverb
  end

  private

  def random_pickuped_proverb
    proverbs_hash = get_and_parse_json
    proverbs_hash.sample['proverb']
  end

  def get_and_parse_json
    uri = URI.parse('http://localhost:3002/proverbs')
    json = Net::HTTP.get(uri)
    JSON.parse(json)
  end
end
