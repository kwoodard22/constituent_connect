Rails.application.routes.draw do

  root 'welcome#landing'

  get '/dashboard', to: 'call#call_dashboard'

  get '/report', to: 'report#show'

  resources :call

  devise_scope :user do
    get '/signup', to: 'registrations#new'
    get '/add_user', to: 'registrations#new_user', as: :new_user
    post '/new_user', to: 'registrations#create', as: :create_user
  end

  devise_for :users, controllers: {registrations: 'registrations'}

  
end
