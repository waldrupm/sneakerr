Rails.application.routes.draw do
  resources :sneakers do
    resources :reviews
  end
  get 'site/index'
  post 'site/add', as: :add
  post 'site/remove', as: :remove

  resource :cart, only: [:show]
  scope 'cart/:sneaker_id' do
    post 'add', to: 'line_items#update', as: :add_to_cart
    delete 'remove', to: 'line_items#destroy', as: :remove_from_cart
  end

  root "sneakers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
