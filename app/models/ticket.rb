class Ticket < ApplicationRecord
  belongs_to :event

  validates :name, presence: true, length: {maximum: 30}
  validates :place, presence: true, numericality: {greater_than_equal_to: 0}
  validates :capacity, presence: true, numericality: {greater_than_equal_to: 0}
end
