class Review < ApplicationRecord
  belongs_to :floaty
  validates :comment, length: { minimum: 20 }
end
