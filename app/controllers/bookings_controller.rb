class BookingsController < ApplicationController

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to root_path, notice: 'イベントチケットが予約されました'
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:name, :email, :comment, :ticket_id, :user_id)
    end
end
