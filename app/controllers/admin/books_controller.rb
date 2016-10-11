class Admin::BooksController < ApplicationController
  before_action :verify_access
  before_action :load_categories, only: [:new, :edit]
  before_action :load_book, except: [:index, :create, :new]
  layout "admin_application"

  def index
    @books = Book.search_name_or_author(params[:key_seach]).newest
      .paginate page: params[:page], per_page: Settings.per_page
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params
    if @book.save
      flash[:info] = t "alert_result"
      redirect_to admin_books_url
    else
      @categories = Category.all
      render :new
    end
  end

  def show
    @reviews = @book.reviews.includes(:user, comments:[:user]).newest
      .paginate page: params[:page], per_page: Settings.per_page
  end

  def edit
  end

  def update
    if @book.update_attributes book_params
      flash[:info] = t "alert_result"
      redirect_to admin_books_url
    else
      @categories = Category.all
      render :edit
    end
  end

  def destroy
    unless @book
      respond_to do |format|
        format.js {render "admin/shared/fail_update_or_del.js.erb"}
      end
    else
      @book.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private
  def book_params
    params.require(:book).permit :name, :description, :author, :url, :image,
      :publish_date, :category_id
  end

  def load_book
    @book = Book.find_by id: params[:id]
    unless @book
      flash[:warning] = t "record_isnt_exist"
      redirect_to admin_books_url
    end
  end

  def load_categories
    @categories = Category.all
  end
end
