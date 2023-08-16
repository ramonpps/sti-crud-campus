Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :caronas do
    resources :paradas, only: [:create]
  end
  get 'caronas/:id/delete', to: 'caronas#destroy', as: 'delete_carona'
  
end
