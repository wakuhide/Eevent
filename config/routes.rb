Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events  do
    collection do
      get 'search'
      post 'send_mail'
    end
  end
  resources :questionnaires
  get 'concept' => "article#concept"
  get 'report' => "article#report"
  get 'reason' => "article#reason"
  get 'question' => "article#question"
  root 'events#index'
  devise_for :users
  resources :notes
  resources :event_users
  resources :users, only: [:show, :update, :edit]
  resources :inquiries do
    collection do
      post "thanks"
      post "received_email"
      post "thanks_email"
    end
  end

end
