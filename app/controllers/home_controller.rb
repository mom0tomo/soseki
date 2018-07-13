class HomeController < ApplicationController
  def index
    @proverb = Proverb.new
  end
end
