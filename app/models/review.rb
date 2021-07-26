class Review < ApplicationRecord
  belongs_to :restaurant
  #faltan las validacions
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: 0..5
end
