NewAuthDemo::Application.routes.draw do
  resources :users, :only => [:create, :new, :show]
  resource :session, :only => [:create, :destroy, :new]

  get '/home', to: 'static#home'
  get '/contact', to: 'static#contact'
  get '/about', to: 'static#about'

  root :to => "users#show"
end
