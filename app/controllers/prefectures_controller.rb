class PrefecturesController < ApplicationController
  def hokkaido
    @user = current_user
    @events = Event.where(prefecture: "北海道").order('created_at DESC').limit(24)
  end

  def aomori
    @user = current_user
    @events = Event.where(prefecture: "青森県").order('created_at DESC').limit(24)
  end

  def akita
    @user = current_user
    @events = Event.where(prefecture: "秋田県").order('created_at DESC').limit(24)
  end

  def iwate
    @user = current_user
    @events = Event.where(prefecture: "岩手県").order('created_at DESC').limit(24)
  end

  def miyagi
    @user = current_user
    @events = Event.where(prefecture: "宮城県").order('created_at DESC').limit(24)
  end

  def yamagata
    @user = current_user
    @events = Event.where(prefecture: "山形県").order('created_at DESC').limit(24)
  end

  def fukushima
    @user = current_user
    @events = Event.where(prefecture: "福島県").order('created_at DESC').limit(24)
  end

  def ibaraki
    @user = current_user
    @events = Event.where(prefecture: "茨城県").order('created_at DESC').limit(24)
  end

  def tochigi
    @user = current_user
    @events = Event.where(prefecture: "栃木県").order('created_at DESC').limit(24)
  end

  def gunma
    @user = current_user
    @events = Event.where(prefecture: "群馬県").order('created_at DESC').limit(24)
  end

  def saitama
    @user = current_user
    @events = Event.where(prefecture: "埼玉県").order('created_at DESC').limit(24)
  end

  def chiba
    @user = current_user
    @events = Event.where(prefecture: "千葉県").order('created_at DESC').limit(24)
  end

  def tokyo
    @user = current_user
    @events = Event.where(prefecture: "東京都").order('created_at DESC').limit(24)
  end

  def kanagawa
    @user = current_user
    @events = Event.where(prefecture: "神奈川県").order('created_at DESC').limit(24)
  end

  def niigata
    @user = current_user
    @events = Event.where(prefecture: "新潟県").order('created_at DESC').limit(24)
  end

  def toyama
    @user = current_user
    @events = Event.where(prefecture: "富山県").order('created_at DESC').limit(24)
  end

  def ishikawa
    @user = current_user
    @events = Event.where(prefecture: "石川県").order('created_at DESC').limit(24)
  end

  def fukui
    @user = current_user
    @events = Event.where(prefecture: "福井県").order('created_at DESC').limit(24)
  end

  def yamanashi
    @user = current_user
    @events = Event.where(prefecture: "山梨県").order('created_at DESC').limit(24)
  end

  def nagano
    @user = current_user
    @events = Event.where(prefecture: "長野県").order('created_at DESC').limit(24)
  end

  def gifu
    @user = current_user
    @events = Event.where(prefecture: "岐阜県").order('created_at DESC').limit(24)
  end

  def shizuoka
    @user = current_user
    @events = Event.where(prefecture: "静岡県").order('created_at DESC').limit(24)
  end

  def aichi
    @user = current_user
    @events = Event.where(prefecture: "愛知県").order('created_at DESC').limit(24)
  end

  def mie
    @user = current_user
    @events = Event.where(prefecture: "三重県").order('created_at DESC').limit(24)
  end

  def shiga
    @user = current_user
    @events = Event.where(prefecture: "滋賀県").order('created_at DESC').limit(24)
  end

  def kyoto
    @user = current_user
    @events = Event.where(prefecture: "京都府").order('created_at DESC').limit(24)
  end

  def osaka
    @user = current_user
    @events = Event.where(prefecture: "大阪府").order('created_at DESC').limit(24)
  end

  def hyogo
    @user = current_user
    @events = Event.where(prefecture: "兵庫県").order('created_at DESC').limit(24)
  end

  def nara
    @user = current_user
    @events = Event.where(prefecture: "奈良県").order('created_at DESC').limit(24)
  end

  def wakayama
    @user = current_user
    @events = Event.where(prefecture: "和歌山県").order('created_at DESC').limit(24)
  end

  def tottori
    @user = current_user
    @events = Event.where(prefecture: "鳥取県").order('created_at DESC').limit(24)
  end

  def shimane
    @user = current_user
    @events = Event.where(prefecture: "島根県").order('created_at DESC').limit(24)
  end

  def okayama
    @user = current_user
    @events = Event.where(prefecture: "岡山県").order('created_at DESC').limit(24)
  end

  def hiroshima
    @user = current_user
    @events = Event.where(prefecture: "広島県").order('created_at DESC').limit(24)
  end

  def yamaguchi
    @user = current_user
    @events = Event.where(prefecture: "山口県").order('created_at DESC').limit(24)
  end

  def tokushima
    @user = current_user
    @events = Event.where(prefecture: "徳島県").order('created_at DESC').limit(24)
  end

  def kagawa
    @user = current_user
    @events = Event.where(prefecture: "香川県").order('created_at DESC').limit(24)
  end

  def ehime
    @user = current_user
    @events = Event.where(prefecture: "愛媛県").order('created_at DESC').limit(24)
  end

  def kochi
    @user = current_user
    @events = Event.where(prefecture: "高知県").order('created_at DESC').limit(24)
  end

  def fukuoka
    @user = current_user
    @events = Event.where(prefecture: "福岡県").order('created_at DESC').limit(24)
  end

  def saga
    @user = current_user
    @events = Event.where(prefecture: "佐賀県").order('created_at DESC').limit(24)
  end

  def nagasaki
    @user = current_user
    @events = Event.where(prefecture: "長崎県").order('created_at DESC').limit(24)
  end

  def kumamoto
    @user = current_user
    @events = Event.where(prefecture: "熊本県").order('created_at DESC').limit(24)
  end

  def oita
    @user = current_user
    @events = Event.where(prefecture: "大分県").order('created_at DESC').limit(24)
  end

  def miyazaki
    @user = current_user
    @events = Event.where(prefecture: "宮崎県").order('created_at DESC').limit(24)
  end

  def kagoshima
    @user = current_user
    @events = Event.where(prefecture: "鹿児島県").order('created_at DESC').limit(24)
  end

  def okinawa
    @user = current_user
    @events = Event.where(prefecture: "沖縄県").order('created_at DESC').limit(24)
  end
end
