require 'constraints/page'

Rails.application.routes.draw do

  resources :passwords, only: [:create, :new]

  namespace :admin do

    get 'login' => 'sessions#new', as: :signin
    delete 'logout' => 'sessions#destroy', as: :signout
    get 'signup' => 'users#new', as: :signup

    resources :pages, except: [:show]

    resource :session, except: [:destroy]

    resources :users, except: [:destroy] do
      resource :password, only: [:create, :edit, :update]
    end

    root to: 'base#dashboard'

  end

  get '/:page' => 'pages#show', constraints: Constraints::Page.new, as: :page

  root 'landing#index'

end
