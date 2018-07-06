class FeaturesController < ApplicationController
  def free_trial
    @user = current_user
    @events = Event.where(feature_code: 1, del_flg: false).or(Event.where(feature2_code: 1, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def trial_event
    @user = current_user
    @events = Event.where(feature_code: 2, del_flg: false).or(Event.where(feature2_code: 2, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def beginner
    @user = current_user
    @events = Event.where(feature_code: 13, del_flg: false).or(Event.where(feature2_code: 13, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def body_make
    @user = current_user
    @events = Event.where(feature_code: 3, del_flg: false).or(Event.where(feature2_code: 3, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def diet
    @user = current_user
    @events = Event.where(feature_code: 4, del_flg: false).or(Event.where(feature2_code: 4, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def anti_aging
    @user = current_user
    @events = Event.where(feature_code: 5, del_flg: false).or(Event.where(feature2_code: 5, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def moning_activity
    @user = current_user
    @events = Event.where(feature_code: 6, del_flg: false).or(Event.where(feature2_code: 6, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def women_only
    @user = current_user
    @events = Event.where(feature_code: 7, del_flg: false).or(Event.where(feature2_code: 7, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def nursery
    @user = current_user
    @events = Event.where(feature_code: 8, del_flg: false).or(Event.where(feature2_code: 8, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def children
    @user = current_user
    @events = Event.where(feature_code: 9, del_flg: false).or(Event.where(feature2_code: 9, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def parent_child
    @user = current_user
    @events = Event.where(feature_code: 10, del_flg: false).or(Event.where(feature2_code: 10, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def matching
    @user = current_user
    @events = Event.where(feature_code: 11, del_flg: false).or(Event.where(feature2_code: 11, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def friends
    @user = current_user
    @events = Event.where(feature_code: 12, del_flg: false).or(Event.where(feature2_code: 12, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def seminar
    @user = current_user
    @events = Event.where(feature_code: 14, del_flg: false).or(Event.where(feature2_code: 14, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def nutrition
    @user = current_user
    @events = Event.where(feature_code: 15, del_flg: false).or(Event.where(feature2_code: 15, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def mental
    @user = current_user
    @events = Event.where(feature_code: 16, del_flg: false).or(Event.where(feature2_code: 16, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end

  def relax
    @user = current_user
    @events = Event.where(feature_code: 17, del_flg: false).or(Event.where(feature2_code: 17, del_flg: false)).where('recruit_start <= ?', Time.now).order('event_start DESC').page(params[:page]).per(12)
  end
end
