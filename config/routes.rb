Rails.application.routes.draw do
  scope :api do
    resources :users
    resources :groups
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
