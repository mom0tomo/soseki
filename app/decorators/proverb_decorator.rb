module ProverbDecorator
  def get_and_parse_json
    uri = URI.parse('http://localhost:3002/proverbs')
    json = Net::HTTP.get(uri)
    data = JSON.parse(json)
  end

  def todays_proverb
    data = get_and_parse_json
    hash = data.sample
    proverb = hash["proverb"]
  end
end
