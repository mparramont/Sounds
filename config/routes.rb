Sounds::Application.routes.draw do
  resources :songs

  resources :albums do
    collection do
      get 'add'
      get 'cover'
    end
  end
  
  resources :artists do
    get 'similar_to', on: :member
  end

  match 'search/' => 'search#search'

  root to: "home#index"
end
