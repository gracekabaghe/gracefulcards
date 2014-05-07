Gracefulcards::Application.routes.draw do
  devise_for :users

  resources :cards

  get "about" => 'welcome#about'

  authenticated :user do
    root to: 'cards#index'
  end

  root to: 'welcome#index'  
end
