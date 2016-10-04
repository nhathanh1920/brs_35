class StaticPagesController < ApplicationController
  before_action :load_categories

  def home
    if params[:category].blank?
      @books = Book.all
    else
      @category = Category.find_by id: params[:category]
      if @category.nil?
        flash[:danger] = t "category_nil"
        redirect_to root_path
      else
        @books = Book.folow_category(@category.id)
      end
    end
  end

  private
  def load_categories
    @categories = Category.all
  end
end
