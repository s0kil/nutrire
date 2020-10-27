Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, only: [:create]
  resources :users, only: [:create] do
    resource :password, controller: "clearance/passwords", only: [:edit, :update]
  end

  get "/sign_in" => "sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#new", as: "sign_up"

  get "/users" => redirect('/sign_up')
  get "/nutrients" => redirect('/nutrients/new')

  resources :nutrients, only: [:new, :create, :index]
  resources :categories, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
