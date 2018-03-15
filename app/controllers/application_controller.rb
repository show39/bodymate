class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :multi_search

  @@prefecture_code = {
    "北海道" => 1,
    "青森県" => 2,
    "秋田県" => 3,
    "岩手県" => 4,
    "宮城県" => 5,
    "山形県" => 6,
    "福島県" => 7,
    "茨城県" => 8,
    "栃木県" => 9,
    "群馬県" => 10,
    "埼玉県" => 11,
    "千葉県" => 12,
    "東京都" => 13,
    "神奈川県" => 14,
    "新潟県" => 15,
    "富山県" => 16,
    "石川県" => 17,
    "福井県" => 18,
    "山梨県" => 19,
    "長野県" => 20,
    "岐阜県" => 21,
    "静岡県" => 22,
    "愛知県" => 23,
    "三重県" => 24,
    "滋賀県" => 25,
    "京都府" => 26,
    "大阪府" => 27,
    "兵庫県" => 28,
    "奈良県" => 29,
    "和歌山県" => 30,
    "鳥取県" => 31,
    "島根県" => 32,
    "岡山県" => 33,
    "広島県" => 34,
    "山口県" => 35,
    "徳島県" => 36,
    "香川県" => 37,
    "愛媛県" => 38,
    "高知県" => 39,
    "福岡県" => 40,
    "佐賀県" => 41,
    "長崎県" => 42,
    "熊本県" => 43,
    "大分県" => 44,
    "宮崎県" => 45,
    "鹿児島県" => 46,
    "沖縄県" => 47,
  }

  @@sports_type_code = {
    "スポーツ（その他）" => 1,
    "ランニング・マラソン" => 2,
    "ウォーキング・ハイキング" => 34,
    "ヨガ" => 3,
    "ピラティス" => 4,
    "トレーニング" => 5,
    "ボルダリング" => 6,
    "ゴルフ" => 7,
    "サッカー・フットサル" => 8,
    "プール・水泳" => 9,
    "マリンスポーツ（その他）" => 10,
    "ボクシング" => 11,
    "キックボクシング" => 12,
    "格闘技（その他）" => 13,
    "バレエ" => 14,
    "体操・トランポリン" => 15,
    "ダンス（その他）" => 16,
    "野球" => 17,
    "テニス" => 18,
    "スカッシュ" => 37,
    "卓球" => 19,
    "バドミントン" => 20,
    "バスケットボール" => 21,
    "バレーボール" => 22,
    "スキー・スノーボード" => 23,
    "スケート" => 24,
    "ウィンタースポーツ（その他）" => 25,
    "ボウリング" => 26,
    "ダーツ" => 27,
    "ビリヤード" => 28,
    "ボディケア・マッサージ" => 30,
    "エステ・トリートメント" => 31,
    "リラクゼーション・アロマ" => 32,
    "施術（その他）" => 33,
    "セミナー・勉強会" => 29,
    "食事・栄養" => 35,
    "瞑想・メンタル" => 36,
  }

  @@feature_code = {
    "選択してください" => 0,
    "無料体験" => 1,
    "体験イベント" => 2,
    "ボディメイク" => 3,
    "ダイエット" => 4,
    "アンチエイジング" => 5,
    "朝活" => 6,
    "女性限定" => 7,
    "託児所有り" => 8,
    "子ども向け" => 9,
    "親子参加" => 10,
    "マッチング・出会い" => 11,
    "仲間募集" => 12,
  }


  # サインアウト後のリダイレクト先URLを指定
  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end

  # bootstrap用のkeyを許可
  add_flash_types :success, :info, :warning, :danger

  # deviseのストロングパラメーター設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :title, :profile, :icon])
  end

  # 複合検索用
  def multi_search
    @prefectures = @@prefecture_code.keys
    @sports_types = @@sports_type_code.keys
    @features = @@feature_code.keys
    @features.shift
    @q = Event.ransack(params[:q])
  end

end
