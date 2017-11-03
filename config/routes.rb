Rails.application.routes.draw do
  resources :blogs
  resources :transactions, only: [:new, :create, :summary]
  get '/transactions/summary', to: 'transactions#summary', as: 'summary'
  resource :cart, only: [:show] do
    put 'add/:item_id', to: 'carts#add', as: :add_to
    put 'remove/:item_id', to: 'carts#remove', as: :remove_from
  end

  devise_for :users, :controllers => { registrations: 'registrations' }, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :items, only: [:show, :index]  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/categories/:category', to: 'categories#show', as: 'category'
  root 'items#index'
  # route to redirect users to root if they enter invalid URL

  match '*path', to: 'index#index', via: :all

end
