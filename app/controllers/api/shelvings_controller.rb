class Api::ShelvingsController < ApplicationController

  def create
    @shelving = Shelving.new(shelving_params)
    if @shelving.save
      render :show
    else
      render json: @shelving.errors.full_messages, status: 420;
    end
  end

  def destroy
    @shelving = Shelving.find_by(shelving_params)
    if @shelving
      @shelving.destroy!
      render :show
    else
      render json: ["not a thing!"], status: 420
    end
  end

  private

  def shelving_params
    params.require(:shelving).permit(:shelf_id, :book_id)
  end

end
