class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    now = Time.now
    @wanted_events = Event.where('user_id = ?', @user.id).where('recruit_start <= ? and recruit_end >= ?', now, now).where('del_flg = ?', false).order('event_start DESC').limit(10)
    @finished_events = Event.where('user_id = ?', @user.id).where('event_end < ?', now).where('del_flg = ?', false).order('event_start DESC').limit(10)
    @entry_tickets = Booking.where('user_id = ?', @user.id).order('created_at DESC').limit(10)
  end
end
