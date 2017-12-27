class TicketMailer < ApplicationMailer
  default from: Rails.application.secrets.user_name

  def booking_mail(booking)
    mail(
      to:       @booking.email,
      subject:  "#{@booking.ticket.event.name}のお申し込みが完了しました",
    ) do |format|
      format.html
    end
  end

end
