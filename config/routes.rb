Rails.application.routes.draw do
  get root 'chatroom#index'
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new'
  resources :users, except: %i[new]

  mount ActionCable.server, at: '/cable'
end
