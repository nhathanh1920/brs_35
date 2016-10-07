class Book < ApplicationRecord
  belongs_to :category
  has_many :reading_books
  has_many :rates
  has_many :reviews

  validates :name, presence: true, length: {maximum: 50}, uniqueness: true

  scope :newest, ->{order created_at: :desc}
  scope :search, ->search {where("name like ?", "#{search}%")}
  scope :except_id, ->id do
    where("id != ?", id).limit Settings.limit_relate_book
  end
end
