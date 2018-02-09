class SportsTypesController < ApplicationController
  def other_sports
    @user = current_user
    @events = Event.where(sports_type_code: 1, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def running
    @user = current_user
    @events = Event.where(sports_type_code: 2, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def walking
    @user = current_user
    @events = Event.where(sports_type_code: 34, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def yoga
    @user = current_user
    @events = Event.where(sports_type_code: 3, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def pilates
    @user = current_user
    @events = Event.where(sports_type_code: 4, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def training
    @user = current_user
    @events = Event.where(sports_type_code: 5, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def bouldering
    @user = current_user
    @events = Event.where(sports_type_code: 6, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def golf
    @user = current_user
    @events = Event.where(sports_type_code: 7, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def football
    @user = current_user
    @events = Event.where(sports_type_code: 8, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def swimming
    @user = current_user
    @events = Event.where(sports_type_code: 9, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def marine_sports
    @user = current_user
    @events = Event.where(sports_type_code: 10, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def boxing
    @user = current_user
    @events = Event.where(sports_type_code: 11, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def kickboxing
    @user = current_user
    @events = Event.where(sports_type_code: 12, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def fighting_sports
    @user = current_user
    @events = Event.where(sports_type_code: 13, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def ballet
    @user = current_user
    @events = Event.where(sports_type_code: 14, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def gym
    @user = current_user
    @events = Event.where(sports_type_code: 15, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def dance
    @user = current_user
    @events = Event.where(sports_type_code: 16, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def baseball
    @user = current_user
    @events = Event.where(sports_type_code: 17, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def tennis
    @user = current_user
    @events = Event.where(sports_type_code: 18, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def table_tennis
    @user = current_user
    @events = Event.where(sports_type_code: 19, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def badminton
    @user = current_user
    @events = Event.where(sports_type_code: 20, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def basketball
    @user = current_user
    @events = Event.where(sports_type_code: 21, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def volleyball
    @user = current_user
    @events = Event.where(sports_type_code: 22, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def skiing
    @user = current_user
    @events = Event.where(sports_type_code: 23, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def skate
    @user = current_user
    @events = Event.where(sports_type_code: 24, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def winter_sports
    @user = current_user
    @events = Event.where(sports_type_code: 25, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def bowling
    @user = current_user
    @events = Event.where(sports_type_code: 26, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def darts
    @user = current_user
    @events = Event.where(sports_type_code: 27, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def billiards
    @user = current_user
    @events = Event.where(sports_type_code: 28, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def seminar
    @user = current_user
    @events = Event.where(sports_type_code: 29, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def bodycare
    @user = current_user
    @events = Event.where(sports_type_code: 30, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def treatment
    @user = current_user
    @events = Event.where(sports_type_code: 31, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def relaxation
    @user = current_user
    @events = Event.where(sports_type_code: 32, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def other_treatments
    @user = current_user
    @events = Event.where(sports_type_code: 33, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def nutrition
    @user = current_user
    @events = Event.where(sports_type_code: 35, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def mental
    @user = current_user
    @events = Event.where(sports_type_code: 36, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def squash
    @user = current_user
    @events = Event.where(sports_type_code: 37, del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end
end
