Rails.application.routes.draw do

  get 'user/index'

  get 'admin/index'

  root 'welcome#landing'

  devise_scope :user do
    get '/new_office', to: 'registrations#new_office'
    post '/create_office', to: 'registrations#create_office', as: :create_office
    get '/new_user', to: 'registrations#new_user', as: :new_user
    post '/create_user', to: 'registrations#create_user', as: :create_user
  end

  devise_for :users

  
end
