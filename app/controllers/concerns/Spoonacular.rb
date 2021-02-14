class Spoonacular
    def self.search_recipes(query)
        resp = Faraday.get('https://api.spoonacular.com/recipes/findByIngredients') do |req|
            req.params['apiKey'] = ENV["SPOONACULAR_API_KEY"]
            req.params['ingredients'] = query
           #req.params['addRecipeInformation'] = true
            #req.params['fillIngredients'] = true

          end
          return JSON.parse(resp.body)[0]
    end
end