class RecipesController < ApplicationController
  def index
     @recipes = Recipe.all
   #@recipes =  current_user.favorited_by_type('Recipe')

  end

  def like
    recipe = Recipe.find(params[:recipe_id])
    current_user.favorite(recipe)
    head :ok
  end

  def unlike
    recipe = Recipe.find(params[:recipe_id])
    current_user.unfavorite(recipe)
    head :ok
  end

  def all_favorite_recipes
    @all_favorites = current_user.all_favorites
    @favorite_recipes = []
    @all_favorites.each do |favorite|
      @favorite_recipes << Recipe.find(favorite.favoritable_id)
    end
  end
end
