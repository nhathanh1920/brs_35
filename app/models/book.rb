class Book < ApplicationRecord
  belongs_to :category
  has_many :reading_books
  has_many :rates
  has_many :reviews

  validates :name, presence: true, length: {maximum: 50}, uniqueness: true

  scope :newest, -> do
    order(created_at: :desc)
  end
  scope :hottest, -> do
    order(rating: :desc).limit Settings.per_page
  end
  scope :search, ->search do
    where("name like ?", "%#{search}%").limit Settings.limit_book
  end
  scope :except_id, ->id do
    where("id != ?", id).limit Settings.limit_book
  end
  scope :by_category, ->id do
    if id
      where("category_id != ?", id)
    else
      newest
    end
  end
end
