class NutrientsController < ApplicationController
  def index
    @nutrients = Nutrient.all
  end

  def new
    @nutrient = Nutrient.new
    @categories = Category.all
  end

  def create
    @nutrient = Nutrient.new(nutrient_params)
    @nutrient.author = current_user
    @nutrient.category = Category.find_by(id: params[:nutrient][:category])

    if @nutrient.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def nutrient_params
    params.require(:nutrient).permit(:title, :text, :image)
  end
end
