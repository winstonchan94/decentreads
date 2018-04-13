class Api::BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: @book.errors.full_messages, status: 422
    end
  end

  def show
    @book = Book.find(params[:id])
    render :show
  end

  def index
    @books = Book.all
    render :index
  end


  private
  def book_params
    params.require(:book).permit(:author_id, :title, :description, :publish_date, :publisher)
  end

end
