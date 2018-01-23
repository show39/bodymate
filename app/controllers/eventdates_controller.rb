class EventdatesController < ApplicationController

  def today
    @user = current_user
    @events = Event.where(event_start: Time.now.all_day).order('event_start DESC').page(params[:page]).per(12)
  end

  def tomorrow
    @user = current_user
    tomorrow = Date.tomorrow
    day_after_tomorrow = tomorrow + 1
    @events = Event.where('event_start >= ? and event_start < ?', tomorrow, day_after_tomorrow).order('event_start DESC').page(params[:page]).per(12)
  end

  def thisweek
    @user = current_user
    @events = Event.where(event_start: Time.now.all_week).order('event_start DESC').page(params[:page]).per(12)
  end

  def nextweek
    @user = current_user
    nextweek = Date.today.next_week
    nextweekend = nextweek + 7
    @events = Event.where('event_start >= ? and event_start < ?', nextweek, nextweekend).order('event_start DESC').page(params[:page]).per(12)
  end

  def thismonth
    @user = current_user
    @events = Event.where(event_start: Time.now.all_month).order('event_start DESC').page(params[:page]).per(12)
  end

  def nextmonth
    @user = current_user
    nextmonth = Date.today.end_of_month
    nextmonthend = Date.today.beginning_of_month.months_since(2)
    @events = Event.where('event_start > ? and event_start < ?', nextmonth, nextmonthend).order('event_start DESC').page(params[:page]).per(12)
  end

  def monday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 1
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

  def tuesday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 2
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

  def wednesday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 3
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

  def thursday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 4
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

  def friday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 5
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

  def saturday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 6
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

  def sunday
    @user = current_user
    today = Date.today
    year_later = today.years_since(1)
    year_events = Event.where('event_start >= ? and event_start < ?', today, year_later)
    events = []
    year_events.each do |event|
      if event.event_start.wday == 0
        events << event
      end
    end
    @events = Kaminari.paginate_array(events).page(params[:page]).per(12)
  end

end
