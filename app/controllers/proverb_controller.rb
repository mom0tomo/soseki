require 'net/http'

class ProverbController < ApplicationController
  def show
  	@proverbs = Proverb.new
    @proverb = @proverbs.todays_proverb
  end
end
