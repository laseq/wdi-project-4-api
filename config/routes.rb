Rails.application.routes.draw do
  resources :groups
  get 'authentications/register'

  get 'authentications/login'

  scope :api do
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
