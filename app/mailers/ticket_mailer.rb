class TicketMailer < ApplicationMailer
  default from: Rails.application.secrets.user_name

  def participant_booking_mail(booking)
    @booking = booking
    mail(
      from:  '"Bodymate（ボディメイト）" <info@bodymate.jp>',
      to:  @booking.email,
      subject:  "#{@booking.ticket.event.name}のお申し込み完了のお知らせ",
    ) do |format|
      format.text
      format.html
    end
  end

  def organizer_booking_mail(booking)
    @booking = booking
    mail(
      from:  '"Bodymate（ボディメイト）" <info@bodymate.jp>',
      to:  @booking.ticket.event.email,
      subject: "#{@booking.ticket.event.name}のお申し込みのお知らせ",
    ) do |format|
      format.text
      format.html
    end
  end

  def participant_cancel_mail(booking)
    @booking = booking
    mail(
      from:  '"Bodymate（ボディメイト）" <info@bodymate.jp>',
      to:  @booking.email,
      subject:  "#{@booking.ticket.event.name}のキャンセル完了のお知らせ",
    ) do |format|
      format.text
      format.html
    end
  end

  def organizer_cancel_mail(booking)
    @booking = booking
    mail(
      from:  '"Bodymate（ボディメイト）" <info@bodymate.jp>',
      to:  @booking.ticket.event.email,
      subject: "#{@booking.ticket.event.name}のキャンセルのお知らせ",
    ) do |format|
      format.text
      format.html
    end
  end

end
