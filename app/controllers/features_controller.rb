class FeaturesController < ApplicationController
  def free_trial
    @user = current_user
    @events = Event.where(feature_code: 1).or(Event.where(feature2_code: 1)).order('event_start DESC').page(params[:page]).per(12)
  end

  def trial_event
    @user = current_user
    @events = Event.where(feature_code: 2).or(Event.where(feature2_code: 2)).order('event_start DESC').page(params[:page]).per(12)
  end

  def body_make
    @user = current_user
    @events = Event.where(feature_code: 3).or(Event.where(feature2_code: 3)).order('event_start DESC').page(params[:page]).per(12)
  end

  def diet
    @user = current_user
    @events = Event.where(feature_code: 4).or(Event.where(feature2_code: 4)).order('event_start DESC').page(params[:page]).per(12)
  end

  def anti_aging
    @user = current_user
    @events = Event.where(feature_code: 5).or(Event.where(feature2_code: 5)).order('event_start DESC').page(params[:page]).per(12)
  end

  def moning_activity
    @user = current_user
    @events = Event.where(feature_code: 6).or(Event.where(feature2_code: 6)).order('event_start DESC').page(params[:page]).per(12)
  end

  def women_only
    @user = current_user
    @events = Event.where(feature_code: 7).or(Event.where(feature2_code: 7)).order('event_start DESC').page(params[:page]).per(12)
  end

  def nursery
    @user = current_user
    @events = Event.where(feature_code: 8).or(Event.where(feature2_code: 8)).order('event_start DESC').page(params[:page]).per(12)
  end

  def children
    @user = current_user
    @events = Event.where(feature_code: 9).or(Event.where(feature2_code: 9)).order('event_start DESC').page(params[:page]).per(12)
  end

  def parent_child
    @user = current_user
    @events = Event.where(feature_code: 10).or(Event.where(feature2_code: 10)).order('event_start DESC').page(params[:page]).per(12)
  end

  def matching
    @user = current_user
    @events = Event.where(feature_code: 11).or(Event.where(feature2_code: 11)).order('event_start DESC').page(params[:page]).per(12)
  end

  def friends
    @user = current_user
    @events = Event.where(feature_code: 12).or(Event.where(feature2_code: 12)).order('event_start DESC').page(params[:page]).per(12)
  end
end
