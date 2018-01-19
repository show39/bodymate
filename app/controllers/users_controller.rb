class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    now = Time.now
    @wanted_events = Event.where('user_id = ?', current_user.id).where('recruit_start <= ? and recruit_end >= ?', now, now).order('event_start DESC').limit(5)
    @finished_events = Event.where('user_id = ?', current_user.id).where('event_end < ?', now).order('event_start DESC').limit(5)
    @entry_tickets = Booking.where('user_id', current_user.id).order('created_at DESC').limit(5)
  end
end
