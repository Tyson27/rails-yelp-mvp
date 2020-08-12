class Review < ApplicationRecord
belongs_to :restaurant
#   parent restaurant cannot be nil = has to exist so therefore create dependecy

validates :content, presence: true
validates :rating, presence: true
# validates :rating, rating: #cannot be nil

validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
# rspec seems double, but that's why we write integer + number checking
end
