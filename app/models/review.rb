class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :inclusion => { :in => 0..5 }
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false, numericality: { only_integer: true }
end
