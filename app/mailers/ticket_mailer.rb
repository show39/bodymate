class TicketMailer < ApplicationMailer
  default from: ENV['EMAIL_HIDDEN']

  def booking_mail(booking)
    @booking = booking
    mail(to: @booking.email, subject: "#{@booking.ticket.event.name}のお申し込みが完了しました")
  end

end
