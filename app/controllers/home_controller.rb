class HomeController < ApplicationController
  def index
    @nutrients =
      Nutrient
        .select('DISTINCT ON (nutrients.category_id) *')
        .includes(:category)
        .sort_by { |n| n.category.priority }

    # TODO: Also Query Most Voted
  end
end
