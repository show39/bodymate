class StaticPagesController < ApplicationController

  def home
    @user = current_user
    @events = Event.where('del_flg = ?', false).order('created_at DESC').limit(12)
  end

  def about
    @user = current_user
  end

  def guide
    @user = current_user
  end

  def terms
    @user = current_user
  end

  def faq
    @user = current_user
  end

  def privacy
    @user = current_user
  end

  def contact
    @user = current_user
  end

  def advertise
    @user = current_user
  end
end
