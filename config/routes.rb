JohnEzzard::Application.routes.draw do
  resources :stories
  
  root "stories#index"
  match "/about", to: "static_pages#about", via: 'get'

end
