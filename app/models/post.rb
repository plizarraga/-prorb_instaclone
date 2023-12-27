class Post < ApplicationRecord
  scope :ordered_by_creation, -> { order(created_at: :desc) }
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
end
