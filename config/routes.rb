Rails.application.routes.draw do
  resources :events, only: :index  do
    post 'detail'
    collection do
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
  resources :inquiries, only: [:create, :index] do
    collection do
      post "thanks"
      post "received_email"
      post "thanks_email"
    end
  end
end
