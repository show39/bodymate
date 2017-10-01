class StaticPagesController < ApplicationController
  # ログインしていないとログインページへリダイレクト
  before_action :authenticate_user!, only: :about

  def home
    @user = current_user
    @events = Event.all
  end

  def about
  end

  def guide
  end

  def terms
  end

  def faq
  end

  def privacy
  end

  def contact
  end

  def advertise
  end
end
