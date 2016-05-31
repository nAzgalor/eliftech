Rails.application.routes.draw do
  resources :companies, except: :show
  root 'companies#index'
end
