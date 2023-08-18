Rails.application.routes.draw do
  resources :campus
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :caronas do
    resources :paradas, only: [:create, :destroy]
    delete 'paradas', to: 'paradas#destroy_all', on: :member
  end
  get 'caronas/:id/delete', to: 'caronas#destroy', as: 'delete_carona'
  post '/subscribe', to: 'newsletter_subscriptions#create', as: :subscribe
  root 'campus#index'
end
