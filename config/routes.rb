require 'constraints/page'

Rails.application.routes.draw do

  get '/:page' => 'pages#show', constraints: Constraints::Page.new, as: :page

  resources :passwords, only: [:create, :new]
  resource :session, except: [:destroy]

  resources :users, except: [:destroy] do
    resource :password, only: [:create, :edit, :update]
  end

  get 'log_in' => 'sessions#new', as: :sign_in
  delete 'log_out' => 'sessions#destroy', as: :sign_out
  get 'sign_up' => 'users#new', as: :sign_up

  root 'landing#index'

end
