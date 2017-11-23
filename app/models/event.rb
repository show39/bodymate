class Event < ApplicationRecord
  belongs_to :user
  has_many :tickets

  validates :name, presence: true, length: {maximum: 30}
  validates :description, length: {maximum: 80}
  validates :city, presence: true
  validates :address1, presence: true
  validates :organizer, presence: true
  validates :tel, presence: true
  validates :email, presence: true
  validates :article, presence: true, length: {maximum: 2000}
  validate  :event_start_should_be_before_event_end
  validate  :recruit_start_should_be_before_recruit_end

  private
  def event_start_should_be_before_event_end
    return unless event_start && event_end
    if event_start >= event_end
      errors.add(:event_start, 'はイベント終了時間よりも前に設定してください')
    end
  end

  def recruit_start_should_be_before_recruit_end
    return unless recruit_start && recruit_end
    if recruit_start >= recruit_end
      errors.add(:recruit_start, 'は募集終了時間よりも前に設定してください')
    end
  end
end
