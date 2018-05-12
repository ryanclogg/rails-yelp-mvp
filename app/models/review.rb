class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating
  validates_inclusion_of :rating, :in => 0..5
  validates_presence_of :restaurant
end
