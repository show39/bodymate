Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  resources :events, only: [:new, :create, :show, :edit, :update]

  resources :bookings, only: [:new, :create]

  root 'static_pages#home'

  get  '/about'      => 'static_pages#about'
  get  '/guide'      => 'static_pages#guide'
  get  '/terms'      => 'static_pages#terms'
  get  '/faq'        => 'static_pages#faq'
  get  '/privacy'    => 'static_pages#privacy'
  get  '/contact'    => 'static_pages#contact'
  get  '/advertise'  => 'static_pages#advertise'

  # 都道府県別イベント一覧
  get  '/hokkaido'   => 'prefectures#hokkaido'
  get  '/aomori'     => 'prefectures#aomori'
  get  '/akita'      => 'prefectures#akita'
  get  '/iwate'      => 'prefectures#iwate'
  get  '/miyagi'     => 'prefectures#miyagi'
  get  '/yamagata'   => 'prefectures#yamagata'
  get  '/fukushima'  => 'prefectures#fukushima'
  get  '/ibaraki'    => 'prefectures#ibaraki'
  get  '/tochigi'    => 'prefectures#tochigi'
  get  '/gunma'      => 'prefectures#gunma'
  get  '/saitama'    => 'prefectures#saitama'
  get  '/chiba'      => 'prefectures#chiba'
  get  '/tokyo'      => 'prefectures#tokyo'
  get  '/kanagawa'   => 'prefectures#kanagawa'
  get  '/niigata'    => 'prefectures#niigata'
  get  '/toyama'     => 'prefectures#toyama'
  get  '/ishikawa'   => 'prefectures#ishikawa'
  get  '/fukui'      => 'prefectures#fukui'
  get  '/yamanashi'  => 'prefectures#yamanashi'
  get  '/nagano'     => 'prefectures#nagano'
  get  '/gifu'       => 'prefectures#gifu'
  get  '/shizuoka'   => 'prefectures#shizuoka'
  get  '/aichi'      => 'prefectures#aichi'
  get  '/mie'        => 'prefectures#mie'
  get  '/shiga'      => 'prefectures#shiga'
  get  '/kyoto'      => 'prefectures#kyoto'
  get  '/osaka'      => 'prefectures#osaka'
  get  '/hyogo'      => 'prefectures#hyogo'
  get  '/nara'       => 'prefectures#nara'
  get  '/wakayama'   => 'prefectures#wakayama'
  get  '/tottori'    => 'prefectures#tottori'
  get  '/shimane'    => 'prefectures#shimane'
  get  '/okayama'    => 'prefectures#okayama'
  get  '/hiroshima'  => 'prefectures#hiroshima'
  get  '/yamaguchi'  => 'prefectures#yamaguchi'
  get  '/tokushima'  => 'prefectures#tokushima'
  get  '/kagawa'     => 'prefectures#kagawa'
  get  '/ehime'      => 'prefectures#ehime'
  get  '/kochi'      => 'prefectures#kochi'
  get  '/fukuoka'    => 'prefectures#fukuoka'
  get  '/saga'       => 'prefectures#saga'
  get  '/nagasaki'   => 'prefectures#nagasaki'
  get  '/kumamoto'   => 'prefectures#kumamoto'
  get  '/oita'       => 'prefectures#oita'
  get  '/miyazaki'   => 'prefectures#miyazaki'
  get  '/kagoshima'  => 'prefectures#kagoshima'
  get  '/okinawa'    => 'prefectures#okinawa'

end
