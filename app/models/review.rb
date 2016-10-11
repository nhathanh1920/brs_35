class Review < ApplicationRecord
  scope :newest, ->{order created_at: :desc}

  belongs_to :user
  belongs_to :book
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {maximum: 100}
  validates :content, presence: true
end
