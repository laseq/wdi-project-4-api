Rails.application.routes.draw do

  # scope :groups do
  #   resources :events
  # end

  scope :api do

    get 'users/search_by_email/:email', to: 'users#search_by_email', :constraints => { :email=> /[^\/]*/ }
    post 'users/search_by_email', to: 'users#search_by_email_in_group'

    resources :events
    resources :users
    resources :groups

    get 'groups/:group_id/events', to: 'events#index'
    post 'groups/:group_id/events', to: 'events#create'
    get 'groups/:group_id/events/:id', to: 'events#show'
    patch 'groups/:group_id/events/:id', to: 'events#update'
    put 'groups/:group_id/events/:id', to: 'events#update'
    delete 'groups/:group_id/events/:id', to: 'events#destroy'
    get 'groups/:group_id/events/:id/attending', to: 'events#attending'
    get 'groups/:group_id/events/:id/not_attending', to: 'events#not_attending'
    post 'groups/:group_id/events/:id/attendance', to: 'events#state_attendance'

    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'

    get 'user-groups', to: 'groups#user_groups'

    post 'group_invites', to: 'group_invites#create'
    post 'group_invites/mass', to: 'group_invites#mass_create'
    put 'group_invites', to: 'group_invites#update'
    get 'group_requests', to: 'group_invites#view_requests'
    delete 'group_invites/remove_by_group_and_user', to: 'group_invites#remove_by_group_and_user'
    delete 'group_invites/:id', to: 'group_invites#destroy'
    get 'group_invites/accept', to: 'group_invites#accept'
    get 'group_invites/pending', to: 'group_invites#current_user_pending_requests'


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
