class ReviewsController < ApplicationController
  before_action :logged_in_user
  before_action :load_book
  before_action :load_review, only: [:edit, :update, :destroy]

  def create
    @review = @book.reviews.build review_params
    @review.save
    respond_to do |format|
      format.js
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    @review.update_attributes review_params
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.js
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :content)
      .merge user_id: current_user.id
  end

  def load_review
    @review = Review.find_by id: params[:id]
    unless @review
      flash[:warning] = t "review_isnt_exist"
      redirect_to books_url
    end
  end

  def load_book
    @book = Book.find_by id: params[:book_id]
    unless @book
      flash[:warning] = t "record_isnt_exist"
      redirect_to books_url
    end
  end
end
