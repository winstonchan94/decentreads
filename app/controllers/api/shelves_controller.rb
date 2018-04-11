class Api::ShelvesController < ApplicationController

  def create
    @shelf = Shelf.new(shelf_params)
    if @shelf.save
      render :show
    else
      render json: @shelf.errors.full_messages, status: 422
    end
  end

  def show
    @shelf = Shelf.find(params[:id])
    if @shelf
      render :show
    else
      render json: @shelf.errors.full_messages, status: 404
    end
  end

  def index
    @shelves = current_user.shelves
    render :index
  end

  def destroy
    @shelf = Shelf.find(params[:id])
    if @shelf.user_id != current_user.id
      render json: ['You do not have permission to delete this shelf'], status: 420
    else
      @shelf.destroy!
      render :show
    end
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name, :user_id)
  end
end
