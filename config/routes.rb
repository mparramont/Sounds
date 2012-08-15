Sounds::Application.routes.draw do
  resources :albums

  resources :artists

  root :to => "home#index"
end
