class MypagesController < ApplicationController

  before_action :authenticate_user!, only: [:mypage]

  def mypage
    now = Time.now
    @wanted_events = Event.where('user_id = ?', current_user.id).where('recruit_start <= ? and recruit_end >= ?', now, now).where('del_flg = ?', false).order('event_start DESC').limit(10)
    @finished_events = Event.where('user_id = ?', current_user.id).where('event_end < ?', now).where('del_flg = ?', false).order('event_start DESC').limit(10)
    @entry_tickets = Booking.where('user_id = ?', current_user.id).includes(ticket: [:event]).order('created_at DESC').limit(10)
  end
end
