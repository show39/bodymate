class Ticket < ApplicationRecord
  belongs_to :event
  has_many   :bookings
  accepts_nested_attributes_for :bookings

  validates :name, presence: true, length: {maximum: 30}
  validates :price, presence: true, numericality: {greater_than_equal_to: 0}
  validates :quantity, presence: true, numericality: {greater_than_equal_to: 0}
end
