class Category < ApplicationRecord
  scope :newest, ->{order created_at: :desc}
  validates :name, presence: true, length: {maximum: 50}, uniqueness: true
  has_many :books, dependent: :destroy
end
