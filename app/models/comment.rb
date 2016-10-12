class Comment < ApplicationRecord
  scope :newest, ->{order created_at: :desc}

  belongs_to :user
  belongs_to :review
end
