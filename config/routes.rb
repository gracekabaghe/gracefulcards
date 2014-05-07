Gracefulcards::Application.routes.draw do
  devise_for :users

  resources :cards

  match "about" => 'welcome#about', via: :get

  root to: 'cards#index'  
end
