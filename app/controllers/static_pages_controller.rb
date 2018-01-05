class StaticPagesController < ApplicationController
  # ログインしていないとログインページへリダイレクト
  before_action :authenticate_user!, only: :about

  def home
    @user = current_user
    @events = Event.order('created_at DESC').limit(12)
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
