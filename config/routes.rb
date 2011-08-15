CleanEats::Application.routes.draw do
    
  resources :posts do
    resources :comments
  end
  resources :sessions
  
  match '/' => 'pages#index'
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  match '/whatis' => 'pages#whatis'
  match '/send_message' => 'pages#send_message'
  match '/search' => 'posts#search'
  match '/recipes' => 'pages#recipes'
  
  match '/admin' => 'sessions#new'
  match '/signin' => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  namespace :admin do
    match "/" => "posts#index"
    resources :posts
  end
  
end

