class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :replication, :create, :edit, :update]

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
    "ウィンタースポーツ（その他）" => 25,
    "ウォーキング・ハイキング" => 34,
    "エステ・トリートメント" => 31,
    "格闘技（その他）" => 13,
    "キックボクシング" => 12,
    "ゴルフ" => 7,
    "サッカー・フットサル" => 8,
    "スカッシュ" => 37,
    "スキー・スノーボード" => 23,
    "スケート" => 24,
    "施術（その他）" => 33,
    "体操・トランポリン" => 15,
    "卓球" => 19,
    "ダーツ" => 27,
    "ダンス（その他）" => 16,
    "テニス" => 18,
    "トレーニング" => 5,
    "トライアスロン" => 38,
    "バイク・自転車" => 39,
    "バスケットボール" => 21,
    "バドミントン" => 20,
    "バトントワーリング" => 40,
    "バレエ" => 14,
    "バレーボール" => 22,
    "ピラティス" => 4,
    "ビリヤード" => 28,
    "プール・水泳" => 9,
    "ボウリング" => 26,
    "ボクシング" => 11,
    "ボディケア・マッサージ" => 30,
    "ボルダリング" => 6,
    "マリンスポーツ（その他）" => 10,
    "野球" => 17,
    "ヨガ" => 3,
    "ランニング・マラソン" => 2,
    "リラクゼーション・アロマ" => 32,
    "スポーツ（その他）" => 1,
  }

  @@feature_code = {
    "選択してください" => 0,
    "無料体験" => 1,
    "体験イベント" => 2,
    "初心者歓迎" => 13,
    "ボディメイク" => 3,
    "ダイエット" => 4,
    "食事・栄養" => 15,
    "アンチエイジング" => 5,
    "瞑想・メンタル" => 16,
    "リラックス" => 17,
    "朝活" => 6,
    "女性限定" => 7,
    "託児所有り" => 8,
    "子ども参加" => 9,
    "親子参加" => 10,
    "マッチング・出会い" => 11,
    "仲間募集" => 12,
    "セミナー・勉強会" => 14,
  }

  def new
    @user = current_user
    @event = Event.new
    @event.tickets.build
  end

  def replication
    @user = current_user
    @event = Event.new
    @event.tickets.build
    @event_data = Event.find(params[:id])
  end

  def create
    @user = current_user
    @event = Event.new(event_params)
    prefecture = @event["prefecture"]
    sports_type = @event["sports_type"]
    feature = @event["feature"]
    feature2 = @event["feature2"]
    @event["prefecture_code"] = @@prefecture_code[prefecture]
    @event["sports_type_code"] = @@sports_type_code[sports_type]
    @event["feature_code"] = @@feature_code[feature]
    @event["feature2_code"] = @@feature_code[feature2]
    @event["address"] = @event["prefecture"] + @event["city"] + @event["address1"]
    if @event.replication_id.present? && @event.image.filename.nil?
      @event_data = Event.find(@event.replication_id)
      @event.image = @event_data.image.file
    end
    if @event.save
      redirect_to root_path, notice: 'イベントが作成されました'
    else
      flash.now[:alert] = @event.errors.full_messages.join(",")
      render :new
    end
  end

  def edit
    @user = current_user
    @event = Event.find(params[:id])
  end

  def update
    @user = current_user
    @event = Event.find(params[:id])
    prefecture = update_event_params["prefecture"]
    sports_type = update_event_params["sports_type"]
    feature = update_event_params["feature"]
    feature2 = update_event_params["feature2"]
    prefecture_code = @@prefecture_code[prefecture]
    sports_type_code = @@sports_type_code[sports_type]
    feature_code = @@feature_code[feature]
    feature2_code = @@feature_code[feature2]
    if update_event_params["del_flg"].nil?
      address = update_event_params["prefecture"] + update_event_params["city"] + update_event_params["address1"]
    else
      address = @event.address
    end
    @event.attributes = {prefecture_code: prefecture_code, sports_type_code: sports_type_code, feature_code: feature_code, feature2_code: feature2_code, address: address}
    if @event.update(update_event_params)
      if @event.del_flg == true
        redirect_to user_path(@user.id), notice: 'イベントが削除されました'
      else
        redirect_to event_path(@event), notice: 'イベントが編集されました'
      end
    else
      flash.now[:alert] = @event.errors.full_messages.join(",")
      render :edit
    end
  end

  def show
    @user = current_user
    @event = Event.find(params[:id])
    @tickets = @event.tickets
    @booking = Booking.new
    @latitude = @event.latitude
    @longitude = @event.longitude
    @address = @event.address
  end

  def search
    @user = current_user
    @q = Event.where(del_flg: false).search(search_params)
    @search_events = @q.result.order('event_start DESC').page(params[:page]).per(12)
  end

  private
    def event_params
      params.require(:event).permit(:name, :sports_type, :sports_type_code, :feature, :feature_code, :feature2, :feature2_code, :description, :event_start, :event_end, :recruit_start, :recruit_end, :image, :article, :place, :place_url, :postcode, :prefecture, :prefecture_code, :city, :address1, :address2, :address, :latitude, :longitude, :organizer, :email, :organizer_url, :facebook_url, :twitter_url, :instagram_url, :replication_id, tickets_attributes: [:name, :price, :quantity]).merge(user_id: current_user.id)
    end

    def update_event_params
      params.require(:event).permit(:name, :sports_type, :sports_type_code, :feature, :feature_code, :feature2, :feature2_code, :description, :event_start, :event_end, :recruit_start, :recruit_end, :image, :article, :place, :place_url, :postcode, :prefecture, :prefecture_code, :city, :address1, :address2, :address, :latitude, :longitude, :organizer, :email, :organizer_url, :facebook_url, :twitter_url, :instagram_url, :del_flg, :replication_id, tickets_attributes: [:name, :price, :quantity, :_destroy, :id]).merge(user_id: current_user.id)
    end

    def search_params
      params.require(:q).permit(:name_or_description_cont, :event_start_gteq, :event_start_lteq_end_of_day, :prefecture_eq, :sports_type_eq, :feature_or_feature2_eq)
    end
end
