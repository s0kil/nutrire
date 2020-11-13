class HomeController < ApplicationController
  def index
    @nutrients =
      Nutrient
        .select('DISTINCT ON (nutrients.category_id) *')
        .includes(:category)
        .sort_by { |n| n.category.priority }

    @most_voted_nutrient =
      Nutrient.find(Vote.nutrient_id_with_most_votes)
  end
end
