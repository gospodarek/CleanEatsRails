CleanEats::Application.routes.draw do
    
  resources :posts
  match '/' => 'pages#index'
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  match '/whatis' => 'pages#whatis'
  match '/send_message' => 'pages#send_message'
  match '/search' => 'posts#search'
  match '/recipes' => 'pages#recipes'
  
  namespace :admin do
    match "/" => "posts#index"
    resources :posts
  end
  
end

