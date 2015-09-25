#require 'httparty'
class Recipe
  include HTTParty

	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	key_value = ENV['FOOD2FORK_KEY'] || 'e92a0a7417b3c0f8647502cc8ea47aba'
	base_uri "http://#{hostport}/api/search"
  	default_params onlyImages: 1, key: key_value

  	# FOOD2FORK_KEY: e92a0a7417b3c0f8647502cc8ea47aba
  	# FOOD2FORK_SERVER_AND_PORT: www.food2fork.com

  	format :json

  def self.for term
    get("", query: { q: term })["recipes"]
  end

end
