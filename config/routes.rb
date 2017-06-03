Rails.application.routes.draw do

  scope :api do
    resources :users
    resources :groups

    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'

    get 'user-groups', to: 'groups#user_groups'

    post 'group_invite', to: 'group_invites#create'
    put 'group_invite', to: 'group_invites#update'
    get 'group_requests', to: 'group_invites#view_requests'
    delete 'group_invite', to: 'group_invites#destroy'
    get 'group_invite/accept', to: 'group_invites#accept'
    get 'group_invite/pending', to: 'group_invites#current_user_pending_requests'


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
