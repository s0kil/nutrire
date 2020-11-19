class NutrientsController < ApplicationController
  before_action :require_login, only: %i[create]

  def index
    @nutrients = Nutrient.all
  end

  def new
    @nutrient = Nutrient.new
    @categories = Category.all
  end

  def create
    @nutrient = Nutrient.new(nutrient_params.slice(:title, :text, :image))
    @nutrient.author = current_user
    category = Category.find_by(id: nutrient_params[:category])
    @nutrient.category = category

    if @nutrient.save
      redirect_to "/category/#{category.title}"
    else
      render 'new'
    end
  end

  def show
    @nutrient = Nutrient.find_by(id: params[:id])
    @author = @nutrient.author
  end

  private

  def nutrient_params
    params.require(:nutrient).permit(:title, :text, :image, :category)
  end
end
