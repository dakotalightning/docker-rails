require 'constraints/page'

Rails.application.routes.draw do

  namespace :admin do

    get 'login' => 'sessions#new', as: :signin
    delete 'logout' => 'sessions#destroy', as: :signout

    resources :pages, except: [:show]

    root to: 'base#dashboard'

  end

  get '/:page' => 'pages#show', constraints: Constraints::Page.new, as: :page

  resources :passwords, only: [:create, :new]
  resource :session, except: [:destroy]

  resources :users, except: [:destroy] do
    resource :password, only: [:create, :edit, :update]
  end

  # get 'signup' => 'users#new', as: :signup

  root 'landing#index'

end
