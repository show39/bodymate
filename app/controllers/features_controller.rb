class FeaturesController < ApplicationController
  def free_trial
    @user = current_user
    @events = Event.where(feature_code: 1).or(Event.where(feature2_code: 1)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def trial_event
    @user = current_user
    @events = Event.where(feature_code: 2).or(Event.where(feature2_code: 2)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def beginner
    @user = current_user
    @events = Event.where(feature_code: 13).or(Event.where(feature2_code: 13)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def body_make
    @user = current_user
    @events = Event.where(feature_code: 3).or(Event.where(feature2_code: 3)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def diet
    @user = current_user
    @events = Event.where(feature_code: 4).or(Event.where(feature2_code: 4).where(del_flg: false)).order('event_start DESC').page(params[:page]).per(12)
  end

  def anti_aging
    @user = current_user
    @events = Event.where(feature_code: 5).or(Event.where(feature2_code: 5)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def moning_activity
    @user = current_user
    @events = Event.where(feature_code: 6).or(Event.where(feature2_code: 6)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def women_only
    @user = current_user
    @events = Event.where(feature_code: 7).or(Event.where(feature2_code: 7)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def nursery
    @user = current_user
    @events = Event.where(feature_code: 8).or(Event.where(feature2_code: 8)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def children
    @user = current_user
    @events = Event.where(feature_code: 9).or(Event.where(feature2_code: 9)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def parent_child
    @user = current_user
    @events = Event.where(feature_code: 10).or(Event.where(feature2_code: 10)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def matching
    @user = current_user
    @events = Event.where(feature_code: 11).or(Event.where(feature2_code: 11)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end

  def friends
    @user = current_user
    @events = Event.where(feature_code: 12).or(Event.where(feature2_code: 12)).where(del_flg: false).order('event_start DESC').page(params[:page]).per(12)
  end
end
