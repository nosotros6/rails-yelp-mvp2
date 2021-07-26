class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  #faltan las validacions
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian]
  }
end
