class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: {maximum: 30}
  validates :description, length: {maximum: 80}
  validates :place, presence: true
  validates :city, presence: true
  validates :address1, presence: true
  validates :organizer, presence: true
  validates :tel, presence: true
  validates :email, presence: true

end
