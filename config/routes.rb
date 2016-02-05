Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events  do
    post 'detail'
    collection do
      get 'search'
      post 'send_mail'
    end
  end
  root 'events#index'
  devise_for :users
  resource :concepts, only: :show
  resource :questions, only: :show
  resource :reasons, only: :show
  resource :reports, only: :show
  resources :event_users
  resources :users, only: [:show, :update, :edit] do
    post 'mypage'
  end
  resources :inquiries do
    collection do
      post "thanks"
      post "received_email"
      post "thanks_email"
    end
  end
end
