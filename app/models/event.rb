class Event < ApplicationRecord
  belongs_to :user
  has_many :tickets
  accepts_nested_attributes_for :tickets, allow_destroy: true

  # イベント画像のアップローダー
  mount_uploader :image, ImageUploader

  # addressから緯度と経度を取得
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: {maximum: 30}
  validates :sports_type, presence: true
  validates :description, length: {maximum: 80}
  validates :place, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :address1, presence: true
  validates :organizer, presence: true
  validates :email, presence: true
  validates :article, presence: true, length: {maximum: 5000}
  validate  :event_start_should_be_before_event_end
  validate  :recruit_start_should_be_before_recruit_end
  validate  :event_feature_not_duplicate

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

  def event_feature_not_duplicate
    return unless feature && feature2
    if feature == feature2 && (feature != "選択してください" && feature2 != "選択してください")
      errors.add(:feature, 'は重複しないようにしてください')
    end
  end
end
