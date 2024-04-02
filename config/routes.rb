Rails.application.routes.draw do
  # get 'static_pages/home'
  get 'about', to: 'static_pages#about'
  get 'projects', to: 'static_pages#projects'
  get 'contact', to: 'static_pages#contact'
  get 'resume', to: 'static_pages#resume'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'static_pages#home'
end
