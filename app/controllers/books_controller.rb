class BooksController < ApplicationController
  before_action :load_book
  before_action :load_categories

  def show
    @books = @book.category.books.except_id(@book.id).newest
    @reviews = @book.reviews.newest.paginate page: params[:page],
      per_page: Settings.per_page
    if logged_in?
      @review = @book.reviews.build
      @rate = @book.rates.build
    end
  end

  private
  def load_book
    @book = Book.find_by id: params[:id]
    unless @book
      flash[:warning] = t "record_isnt_exist"
      redirect_to root_url
    end
  end
end
