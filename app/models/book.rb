class Book < ApplicationRecord
  belongs_to :category
  has_many :reading_books
  has_many :rates
  has_many :reviews

  scope :newest, -> {order created_at: :desc}
  scope :folow_category, -> category_id {where category_id: category_id}
end
