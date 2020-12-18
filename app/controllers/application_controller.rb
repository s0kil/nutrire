class ApplicationController < ActionController::Base
  include Clearance::Controller

  def authenticate(params)
    User.authenticate(
      params[:session][:username],
      params[:session][:password]
    )
  end
end
