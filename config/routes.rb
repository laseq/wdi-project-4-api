Rails.application.routes.draw do
  get 'group_invites/create'

  get 'group_invites/accept'

  get 'group_invites/decline'

  scope :api do
    resources :users
    resources :groups

    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'

    get 'user-groups', to: 'groups#user_groups'

    post 'group_invite', to: 'group_invites#create'
    get 'group_requests', to: 'group_invites#view_requests'
    delete 'group_invite', to: 'group_invites#destroy'



  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
