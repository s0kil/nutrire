class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to new_nutrient_path
    else
      render 'categories/new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:title, :priority)
  end
end
