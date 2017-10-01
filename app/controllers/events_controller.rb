class EventsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: 'イベントが作成されました'
    else
      flash.now[:alert] = @event.errors.full_messages.join(",")
      render template: "events/new"
    end      
  end

  private
    def event_params
      params.require(:event).permit(:name, :description, :price_type, :event_start, :event_end, :capacity, :recruit_start, :recruit_end, :image, :article, :place, :place_url, :postcode, :prefecture, :city, :address1, :address2, :map, :organizer, :tel, :email, :facebook_url, :twitter_url).merge(user_id: current_user.id)
    end
end
