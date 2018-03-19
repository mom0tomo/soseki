require 'net/http'

class ProverbController < ApplicationController
  def show
  	uri = URI.parse("http://localhost:3002/proverbs")
  	@query = uri.query

  	response = Net::HTTP.start(uri.host, uri.port) do |http|
  		http.open_timeout = 5
  		http.read_timeout = 10
  		http.get(uri.request_uri)
  	end	
  end
end
