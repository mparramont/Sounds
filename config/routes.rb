Sounds::Application.routes.draw do
  resources :songs

  resources :albums
  
  resources :artists do
    get 'similar_to', on: :member
  end

  match 'search/' => 'search#search'

  root to: "home#index"
end
