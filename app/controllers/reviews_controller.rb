class ReviewsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  before_action :load_book, only: [:create]

  def create
    @review = @book.reviews.build review_params
    @review.save
    respond_to do |format|
      format.js
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :content)
      .merge user_id: current_user.id
  end

  def load_book
    @book = Book.find_by id: params[:book_id]
    unless @book
      flash[:warning] = t "record_isnt_exist"
      redirect_to books_url
    end
  end
end
