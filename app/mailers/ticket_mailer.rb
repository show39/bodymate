class TicketMailer < ApplicationMailer
  default from: Rails.application.secrets.user_name

  def booking_mail(booking)
    @booking = booking
    mail(
      from: '"Bodymate（ボディメイト）" <info@bodymate.jp>',
      to:       @booking.email,
      subject:  "#{@booking.ticket.event.name}のお申し込み完了のお知らせ",
    ) do |format|
      format.text
      format.html
    end
  end
end
