

class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      generate_default_shelves
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render :show
    else
      render json: @user.errors.full_messages, status: 420
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :name, :password)
  end
end
