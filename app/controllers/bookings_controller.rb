class BookingsController < ApplicationController

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      TicketMailer.participant_booking_mail(@booking).deliver_later
      TicketMailer.organizer_booking_mail(@booking).deliver_later
      redirect_to event_path(@booking.ticket.event.id), notice: 'イベントチケットが予約されました。予約確認メールをお送りしました。'
    end
  end

  def update
    @user = current_user
    @booking = Booking.find(params[:id])
    if @booking.update(update_booking_params)
      TicketMailer.participant_cancel_mail(@booking).deliver_later
      TicketMailer.organizer_cancel_mail(@booking).deliver_later
      redirect_to user_path(@user.id), notice: 'チケットがキャンセルされました。キャンセル確認メールをお送りしました。'
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:name, :email, :comment, :ticket_id, :user_id)
    end

    def update_booking_params
      params.require(:booking).permit(:name, :email, :comment, :ticket_id, :user_id, :del_flg)
    end
end
