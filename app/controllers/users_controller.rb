class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_back(fallback_location: '/courses')
    else
      redirect_to users_path
    end
  end

  private

  def user_params
    @user_params ||= params
      .require(:user)
      .permit(
        :first_name,
        :last_name,
        :email
    )
  end
end
