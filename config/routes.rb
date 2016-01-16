Rails.application.routes.draw do
  resources :questionnaires
  get 'concept' => "article#concept"
  get 'report' => "article#report"
  get 'reason' => "article#reason"
  get 'question' => "article#question"
  root 'events#index'
  devise_for :users
  resources :notes
  resources :users, only: [:show, :update, :edit]
  resources :inquiries
  resources :events  do
    collection do
      get 'search'
    end
  end
end
