Sounds::Application.routes.draw do
  resources :songs

  resources :albums do
    collection do
      get 'add'
    end
  end
  
  resources :artists do
    get 'similar_to', on: :member
  end

  get 'search/' => 'search#search'

  root to: "home#index"
end
