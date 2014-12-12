Rails.application.routes.draw do

  get 'office/index'

  get '/dashboard', to: 'user#user_dashboard'

  get 'admin/index'

  root 'welcome#landing'

  devise_scope :user do
    get '/signup', to: 'registrations#new'
    get '/add_user', to: 'registrations#new_user', as: :new_user
    post '/new_user', to: 'registrations#create', as: :create_user
  end

  devise_for :users, controllers: {registrations: 'registrations'}

  
end
