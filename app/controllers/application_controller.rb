class ApplicationController < ActionController::Base
  include Clearance::Controller

  def initialize
    super

    console if Rails.env.development?
  end

  def authenticate(params)
    User.authenticate(
      params[:session][:username],
      params[:session][:password]
    )
  end
end
