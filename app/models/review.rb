class Review < ApplicationRecord
  scope :newest, ->{order created_at: :desc}

  belongs_to :user
  belongs_to :book

  validates :title, presence: true, length: {maximum: 100}
  validates :content, presence: true

  has_many :likes
end
