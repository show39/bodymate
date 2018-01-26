class PrefecturesController < ApplicationController
  def hokkaido
    @user = current_user
    @events = Event.where(prefecture_code: 1).order('event_start DESC').page(params[:page]).per(12)
  end

  def aomori
    @user = current_user
    @events = Event.where(prefecture_code: 2).order('event_start DESC').page(params[:page]).per(12)
  end

  def akita
    @user = current_user
    @events = Event.where(prefecture_code: 3).order('event_start DESC').page(params[:page]).per(12)
  end

  def iwate
    @user = current_user
    @events = Event.where(prefecture_code: 4).order('event_start DESC').page(params[:page]).per(12)
  end

  def miyagi
    @user = current_user
    @events = Event.where(prefecture_code: 5).order('event_start DESC').page(params[:page]).per(12)
  end

  def yamagata
    @user = current_user
    @events = Event.where(prefecture_code: 6).order('event_start DESC').page(params[:page]).per(12)
  end

  def fukushima
    @user = current_user
    @events = Event.where(prefecture_code: 7).order('event_start DESC').page(params[:page]).per(12)
  end

  def ibaraki
    @user = current_user
    @events = Event.where(prefecture_code: 8).order('event_start DESC').page(params[:page]).per(12)
  end

  def tochigi
    @user = current_user
    @events = Event.where(prefecture_code: 9).order('event_start DESC').page(params[:page]).per(12)
  end

  def gunma
    @user = current_user
    @events = Event.where(prefecture_code: 10).order('event_start DESC').page(params[:page]).per(12)
  end

  def saitama
    @user = current_user
    @events = Event.where(prefecture_code: 11).order('event_start DESC').page(params[:page]).per(12)
  end

  def chiba
    @user = current_user
    @events = Event.where(prefecture_code: 12).order('event_start DESC').page(params[:page]).per(12)
  end

  def tokyo
    @user = current_user
    @events = Event.where(prefecture_code: 13).order('event_start DESC').page(params[:page]).per(12)
  end

  def kanagawa
    @user = current_user
    @events = Event.where(prefecture_code: 14).order('event_start DESC').page(params[:page]).per(12)
  end

  def niigata
    @user = current_user
    @events = Event.where(prefecture_code: 15).order('event_start DESC').page(params[:page]).per(12)
  end

  def toyama
    @user = current_user
    @events = Event.where(prefecture_code: 16).order('event_start DESC').page(params[:page]).per(12)
  end

  def ishikawa
    @user = current_user
    @events = Event.where(prefecture_code: 17).order('event_start DESC').page(params[:page]).per(12)
  end

  def fukui
    @user = current_user
    @events = Event.where(prefecture_code: 18).order('event_start DESC').page(params[:page]).per(12)
  end

  def yamanashi
    @user = current_user
    @events = Event.where(prefecture_code: 19).order('event_start DESC').page(params[:page]).per(12)
  end

  def nagano
    @user = current_user
    @events = Event.where(prefecture_code: 20).order('event_start DESC').page(params[:page]).per(12)
  end

  def gifu
    @user = current_user
    @events = Event.where(prefecture_code: 21).order('event_start DESC').page(params[:page]).per(12)
  end

  def shizuoka
    @user = current_user
    @events = Event.where(prefecture_code: 22).order('event_start DESC').page(params[:page]).per(12)
  end

  def aichi
    @user = current_user
    @events = Event.where(prefecture_code: 23).order('event_start DESC').page(params[:page]).per(12)
  end

  def mie
    @user = current_user
    @events = Event.where(prefecture_code: 24).order('event_start DESC').page(params[:page]).per(12)
  end

  def shiga
    @user = current_user
    @events = Event.where(prefecture_code: 25).order('event_start DESC').page(params[:page]).per(12)
  end

  def kyoto
    @user = current_user
    @events = Event.where(prefecture_code: 26).order('event_start DESC').page(params[:page]).per(12)
  end

  def osaka
    @user = current_user
    @events = Event.where(prefecture_code: 27).order('event_start DESC').page(params[:page]).per(12)
  end

  def hyogo
    @user = current_user
    @events = Event.where(prefecture_code: 28).order('event_start DESC').page(params[:page]).per(12)
  end

  def nara
    @user = current_user
    @events = Event.where(prefecture_code: 29).order('event_start DESC').page(params[:page]).per(12)
  end

  def wakayama
    @user = current_user
    @events = Event.where(prefecture_code: 30).order('event_start DESC').page(params[:page]).per(12)
  end

  def tottori
    @user = current_user
    @events = Event.where(prefecture_code: 31).order('event_start DESC').page(params[:page]).per(12)
  end

  def shimane
    @user = current_user
    @events = Event.where(prefecture_code: 32).order('event_start DESC').page(params[:page]).per(12)
  end

  def okayama
    @user = current_user
    @events = Event.where(prefecture_code: 33).order('event_start DESC').page(params[:page]).per(12)
  end

  def hiroshima
    @user = current_user
    @events = Event.where(prefecture_code: 34).order('event_start DESC').page(params[:page]).per(12)
  end

  def yamaguchi
    @user = current_user
    @events = Event.where(prefecture_code: 35).order('event_start DESC').page(params[:page]).per(12)
  end

  def tokushima
    @user = current_user
    @events = Event.where(prefecture_code: 36).order('event_start DESC').page(params[:page]).per(12)
  end

  def kagawa
    @user = current_user
    @events = Event.where(prefecture_code: 37).order('event_start DESC').page(params[:page]).per(12)
  end

  def ehime
    @user = current_user
    @events = Event.where(prefecture_code: 38).order('event_start DESC').page(params[:page]).per(12)
  end

  def kochi
    @user = current_user
    @events = Event.where(prefecture_code: 39).order('event_start DESC').page(params[:page]).per(12)
  end

  def fukuoka
    @user = current_user
    @events = Event.where(prefecture_code: 40).order('event_start DESC').page(params[:page]).per(12)
  end

  def saga
    @user = current_user
    @events = Event.where(prefecture_code: 41).order('event_start DESC').page(params[:page]).per(12)
  end

  def nagasaki
    @user = current_user
    @events = Event.where(prefecture_code: 42).order('event_start DESC').page(params[:page]).per(12)
  end

  def kumamoto
    @user = current_user
    @events = Event.where(prefecture_code: 43).order('event_start DESC').page(params[:page]).per(12)
  end

  def oita
    @user = current_user
    @events = Event.where(prefecture_code: 44).order('event_start DESC').page(params[:page]).per(12)
  end

  def miyazaki
    @user = current_user
    @events = Event.where(prefecture_code: 45).order('event_start DESC').page(params[:page]).per(12)
  end

  def kagoshima
    @user = current_user
    @events = Event.where(prefecture_code: 46).order('event_start DESC').page(params[:page]).per(12)
  end

  def okinawa
    @user = current_user
    @events = Event.where(prefecture_code: 47).order('event_start DESC').page(params[:page]).per(12)
  end
end
