class StaticPagesController < ApplicationController
  before_action :load_categories

  def home
    if params[:category].blank?
      @books = Book.search(params[:search]).newest.paginate page: params[:page],
        per_page: Settings.per_page
    else
      @category = Category.find_by id: params[:category]
      if @category.nil?
        flash[:danger] = t "category_nil"
        redirect_to root_path
      else
        @books = @category.books.paginate page: params[:page],
        per_page: Settings.per_page
      end
    end
  end
end
