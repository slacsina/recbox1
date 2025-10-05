class SearchController < ApplicationController
  def index
    ingredient_query = params[:ingredient_query]
      if ingredient_query.present?
        @recipematch = Recipe.joins(:recipe_ingredients, :ingredients).where("ingredients.ingr_name LIKE ?", "%#{ingredient_query}%").distinct
    end
  end
end
