class VotesController < ApplicationController
  before_action :require_login, only: %i[create]

  def create
    user = User.find(params[:user_id])
    nutrient = Nutrient.find(params[:nutrient_id])

    # Vote Already Exists
    return if Vote.find_by(user: user, nutrient: nutrient)

    vote = Vote.new(user: user, nutrient: nutrient)
    reload_page if vote.save
  rescue ActiveRecord::RecordNotFound
    # Ignored
  end

  def destroy
    Vote.find(params[:id]).destroy
    reload_page
  end

  private

  def reload_page
    redirect_back(fallback_location: root_path)
  end
end
