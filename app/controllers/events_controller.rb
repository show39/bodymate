class EventsController < ApplicationController
  before_action :authenticate_user!, only: :new

  # after_update do
  #   event_delete_message if del_flg_changed?
  # end

  def new
    @user = current_user
    @event = Event.new
    @event.tickets.build
  end

  def create
    @user = current_user
    @event = Event.new(event_params)
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
    @event = Event.find(params[:id])
    if @event.update(update_event_params)
      redirect_to root_path, notice: 'イベントが編集されました'
    else
      render :edit
    end
  end

  def show
    @user = current_user
    @event = Event.find(params[:id])
    @tickets = @event.tickets
  end

  private
    def event_params
      params.require(:event).permit(:name, :description, :event_start, :event_end, :recruit_start, :recruit_end, :image, :article, :place, :place_url, :postcode, :prefecture, :city, :address1, :address2, :map, :organizer, :tel, :email, :organizer_url, :facebook_url, :twitter_url, :instagram_url, tickets_attributes: [:name, :price, :quantity]).merge(user_id: current_user.id)
    end

    def update_event_params
      params.require(:event).permit(:name, :description, :event_start, :event_end, :recruit_start, :recruit_end, :image, :article, :place, :place_url, :postcode, :prefecture, :city, :address1, :address2, :map, :organizer, :tel, :email, :organizer_url, :facebook_url, :twitter_url, :instagram_url, :del_flg, tickets_attributes: [:name, :price, :quantity, :_destroy, :id]).merge(user_id: current_user.id)
    end

    # def event_delete_message
    #   redirect_to user_path, alert: 'イベントが削除されました'
    # end
end
