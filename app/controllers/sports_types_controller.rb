class SportsTypesController < ApplicationController
  def other_sports
    @user = current_user
    @events = Event.where(sports_type_code: 1).order('event_start DESC').page(params[:page]).per(12)
  end

  def running
    @user = current_user
    @events = Event.where(sports_type_code: 2).order('event_start DESC').page(params[:page]).per(12)
  end

  def yoga
    @user = current_user
    @events = Event.where(sports_type_code: 3).order('event_start DESC').page(params[:page]).per(12)
  end

  def pilates
    @user = current_user
    @events = Event.where(sports_type_code: 4).order('event_start DESC').page(params[:page]).per(12)
  end

  def training
    @user = current_user
    @events = Event.where(sports_type_code: 5).order('event_start DESC').page(params[:page]).per(12)
  end

  def bouldering
    @user = current_user
    @events = Event.where(sports_type_code: 6).order('event_start DESC').page(params[:page]).per(12)
  end

  def golf
    @user = current_user
    @events = Event.where(sports_type_code: 7).order('event_start DESC').page(params[:page]).per(12)
  end

  def football
    @user = current_user
    @events = Event.where(sports_type_code: 8).order('event_start DESC').page(params[:page]).per(12)
  end

  def swimming
    @user = current_user
    @events = Event.where(sports_type_code: 9).order('event_start DESC').page(params[:page]).per(12)
  end

  def marine_sports
    @user = current_user
    @events = Event.where(sports_type_code: 10).order('event_start DESC').page(params[:page]).per(12)
  end

  def boxing
    @user = current_user
    @events = Event.where(sports_type_code: 11).order('event_start DESC').page(params[:page]).per(12)
  end

  def kickboxing
    @user = current_user
    @events = Event.where(sports_type_code: 12).order('event_start DESC').page(params[:page]).per(12)
  end

  def fighting_sports
    @user = current_user
    @events = Event.where(sports_type_code: 13).order('event_start DESC').page(params[:page]).per(12)
  end

  def ballet
    @user = current_user
    @events = Event.where(sports_type_code: 14).order('event_start DESC').page(params[:page]).per(12)
  end

  def gym
    @user = current_user
    @events = Event.where(sports_type_code: 15).order('event_start DESC').page(params[:page]).per(12)
  end

  def dance
    @user = current_user
    @events = Event.where(sports_type_code: 16).order('event_start DESC').page(params[:page]).per(12)
  end

  def baseball
    @user = current_user
    @events = Event.where(sports_type_code: 17).order('event_start DESC').page(params[:page]).per(12)
  end

  def tennis
    @user = current_user
    @events = Event.where(sports_type_code: 18).order('event_start DESC').page(params[:page]).per(12)
  end

  def table_tennis
    @user = current_user
    @events = Event.where(sports_type_code: 19).order('event_start DESC').page(params[:page]).per(12)
  end

  def badminton
    @user = current_user
    @events = Event.where(sports_type_code: 20).order('event_start DESC').page(params[:page]).per(12)
  end

  def basketball
    @user = current_user
    @events = Event.where(sports_type_code: 21).order('event_start DESC').page(params[:page]).per(12)
  end

  def volleyball
    @user = current_user
    @events = Event.where(sports_type_code: 22).order('event_start DESC').page(params[:page]).per(12)
  end

  def skiing
    @user = current_user
    @events = Event.where(sports_type_code: 23).order('event_start DESC').page(params[:page]).per(12)
  end

  def skate
    @user = current_user
    @events = Event.where(sports_type_code: 24).order('event_start DESC').page(params[:page]).per(12)
  end

  def winter_sports
    @user = current_user
    @events = Event.where(sports_type_code: 25).order('event_start DESC').page(params[:page]).per(12)
  end

  def bowling
    @user = current_user
    @events = Event.where(sports_type_code: 26).order('event_start DESC').page(params[:page]).per(12)
  end

  def darts
    @user = current_user
    @events = Event.where(sports_type_code: 27).order('event_start DESC').page(params[:page]).per(12)
  end

  def billiards
    @user = current_user
    @events = Event.where(sports_type_code: 28).order('event_start DESC').page(params[:page]).per(12)
  end

  def seminar
    @user = current_user
    @events = Event.where(sports_type_code: 29).order('event_start DESC').page(params[:page]).per(12)
  end

  def bodycare
    @user = current_user
    @events = Event.where(sports_type_code: 30).order('event_start DESC').page(params[:page]).per(12)
  end

  def treatment
    @user = current_user
    @events = Event.where(sports_type_code: 31).order('event_start DESC').page(params[:page]).per(12)
  end

  def relaxation
    @user = current_user
    @events = Event.where(sports_type_code: 32).order('event_start DESC').page(params[:page]).per(12)
  end

  def other_treatments
    @user = current_user
    @events = Event.where(sports_type_code: 33).order('event_start DESC').page(params[:page]).per(12)
  end
end
