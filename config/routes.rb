Rails.application.routes.draw do
  resources :employees
   get '/auth/google_oauth2/callback',to: "sessions#omniauth"
   get 'home' , to: "employees#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
