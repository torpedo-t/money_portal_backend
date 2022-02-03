Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :bank_accounts, only: [:index, :create]
      resources :transactions, only: [:index, :create]
      end
    end
  end
