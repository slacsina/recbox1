class HomeController < ApplicationController
  def index
    @recipes = Recipe.includes(:ingredients).take(5)
  end
end
