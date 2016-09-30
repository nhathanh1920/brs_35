class Book < ApplicationRecord
  belongs_to :category
  has_many :reading_books
  has_many :rates
  has_many :reviews
end
