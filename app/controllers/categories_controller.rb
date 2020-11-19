class CategoriesController < ApplicationController
  before_action :require_login, only: %i[create]

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

  def show
    @category = Category.find_by(title: params[:slug])
    redirect_to '/404' if @category.nil?

    # https://edgeguides.rubyonrails.org/action_text_overview.html#avoid-n-1-queries
    @nutrients = Nutrient.where(category: @category).includes(:votes).with_rich_text_text
  end

  private

  def category_params
    params.require(:category).permit(:title, :priority)
  end
end
