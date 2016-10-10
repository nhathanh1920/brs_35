module BooksHelper

  def show_rating string = ""
    rating = "<span class = '#{string}'>☆</span>"
    rating.html_safe
  end
end
