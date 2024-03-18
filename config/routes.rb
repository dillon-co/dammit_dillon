Rails.application.routes.draw do
  resources :orders
  get 'cart/show'
  resources :shipping_infos
  resources :images
  resources :art_works, path: :art 
  # get 'pages/landing'
  get 'about' => 'pages#about'
  get 'how-it-works' => 'pages#how_it_works', as: :how_it_works
  get 'timeline' => 'pages#timeline', as: :timeline
  get 'dashboard' => 'pages#dashboard', as: :dashboard
  post 'donation_paid/:id' => 'pages#donation_paid', as: :donation_paid
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root "pages#landing"
end
