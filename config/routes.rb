Rails.application.routes.draw do

  scope :api do
    resources :users
    resources :groups

    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'

    get 'user-groups', to: 'groups#user_groups'

    post 'group_invites', to: 'group_invites#create'
    post 'group_invites/mass', to: 'group_invites#mass_create'
    put 'group_invites', to: 'group_invites#update'
    get 'group_requests', to: 'group_invites#view_requests'
    delete 'group_invites/:id', to: 'group_invites#destroy'
    get 'group_invites/accept', to: 'group_invites#accept'
    get 'group_invites/pending', to: 'group_invites#current_user_pending_requests'


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
