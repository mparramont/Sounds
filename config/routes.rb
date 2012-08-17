Sounds::Application.routes.draw do
  resources :songs

  resources :albums

  resources :artists do
    get 'find_similar_to', :on => :member
  end

  root :to => "home#index"
end
