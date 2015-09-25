class RecipesController < ApplicationController
  def index
		# check if a request parameter search was passed in.
		# use the search term as the keyword if supplied, and use a default value of chocolate if not supplied
		@search_term = params['search'] || 'chocolate'
		@recipes = Recipe.for(@search_term)# || []
  end
end