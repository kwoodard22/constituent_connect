Rails.application.routes.draw do

  root 'welcome#landing'

  devise_scope :user do
    get '/signup', to: 'registrations#new'
    post '/new_office', to: 'registrations#create', as: :create_office
    get '/add_staff', to: 'registrations#new_staff', as: :new_staff
    post '/create_staff', to: 'registrations#create_staff', as: :create_staff
  end

  devise_for :users

  
end
