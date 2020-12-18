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
    includes = [:rich_text_text, (:votes if signed_in?)]
    includes.push(:votes) if signed_in? # Only Signed In Users Can Vote

    @nutrients = Nutrient.all.where(category: @category).includes(includes)
  end

  private

  def category_params
    params.require(:category).permit(:title, :priority)
  end
end
