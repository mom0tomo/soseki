class HomeController < ApplicationController
  def index
    @proverbs = Proverb.new
    @proverb = @proverbs.todays_proverb
  end
end
