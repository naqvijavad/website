class UsersController < ApplicationController

  def register_early
    user = User.find_by({ :email => user_params["email"] }) || User.new
    user.update_attributes(user_params)
    respond_with_CRUD_json_response(user)
  end

private
  
  def user_params
    params.require(:user).permit([
      :name, :mobile, :email,
      :location, :profession, :married
    ])
  end

end