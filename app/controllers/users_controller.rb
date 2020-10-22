# https://github.com/thoughtbot/clearance/blob/master/app/controllers/clearance/users_controller.rb
class UsersController < Clearance::UsersController
  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password)
  end
end
