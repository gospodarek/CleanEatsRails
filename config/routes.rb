CleanEats::Application.routes.draw do
  
  resources :posts
  match '/' => 'pages#index'
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
  match '/whatis' => 'pages#whatis'

  namespace :admin do
    match "/" => "posts#index"
    resources :posts
  end
  
end
