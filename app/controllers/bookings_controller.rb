class BookingsController < ApplicationController

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      TicketMailer.booking_mail(@booking).deliver_later
      redirect_to event_path(@booking.ticket.event.id), notice: "イベントチケットが予約されました。予約確認メールをお送りしました。"
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:name, :email, :comment, :ticket_id, :user_id)
    end
end
