Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  resources :events, only: [:new, :create]

  root 'static_pages#home'

  get  '/about'     => 'static_pages#about'
  get  '/guide'     => 'static_pages#guide'
  get  '/terms'     => 'static_pages#terms'
  get  '/faq'       => 'static_pages#faq'
  get  '/privacy'   => 'static_pages#privacy'
  get  '/contact'   => 'static_pages#contact'
  get  '/advertise' => 'static_pages#advertise'

end
