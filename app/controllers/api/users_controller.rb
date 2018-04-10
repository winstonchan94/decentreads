require 'shelvings_controller'

class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      Shelf.create(name: "All", user_id: @user.id)
      Shelf.create(name: "Read", user_id: @user.id)
      Shelf.create(name: "Currently Reading", user_id: @user.id)
      Shelf.create(name: "Want to Read", user_id: @user.id)
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
