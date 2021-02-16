class Spoonacular
    def self.search_recipes(query)
        resp = Faraday.get('https://api.spoonacular.com/recipes/complexSearch') do |req|
            req.params['apiKey'] = ENV["SPOONACULAR_API_KEY"]
            req.params['includeIngredients'] = query
           #req.params['addRecipeInformation'] = true
            req.params['fillIngredients'] = true

          end
          return JSON.parse(resp.body)["results"]
    end
end