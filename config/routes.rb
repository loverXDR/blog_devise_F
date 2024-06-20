

Rails.application.routes.draw do
  resources :persons

  devise_for :users

  get 'current_user', to: 'users#show', as: 'current_user_path'

  get 'persons/profile', as: 'user_root'

  root "articles#index"

  resources :articles do
    resources :comments
  end

  #devise_scope :userdoget 'sign_out', to: 'devise/sessions#new'

end


