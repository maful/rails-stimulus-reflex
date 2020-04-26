# frozen_string_literal: true

class MealFinderReflex < ApplicationReflex
  def search(query = nil)
    result = HTTP.get("https://www.themealdb.com/api/json/v1/1/search.php?#{{s: query}.to_query}")
    data = JSON.parse(result)
    @meals = data['meals']
  end

  def find(id)
    result = HTTP.get("https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}")
    data = JSON.parse(result)
    @meal = data['meals'].first
  end

  def random()
    result = HTTP.get('https://www.themealdb.com/api/json/v1/1/random.php')
    data = JSON.parse(result)
    @meal = data['meals'].first
  end
end
