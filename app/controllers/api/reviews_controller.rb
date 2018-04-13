class Api::ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def show
    @review = Review.find(params[:id])
    if @review
      render :show
    else
      render json: @review.errors.full_messages, status: 404
    end
  end

  def edit
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render :show
    else
      render json: @review.errors.full_messages, status: 420
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.user_id != current_user.id
      render json: ['You do not have permission to delete this review'], status: 420
    else
      @review.destroy!
      render :show
    end
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :body, :rating, :book_id)
  end
end
