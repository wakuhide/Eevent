Rails.application.routes.draw do
  resources :users
  resources :events  do
    collection do
      get 'search'
    end
  end
  root 'events#index'
end
