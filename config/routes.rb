Rails.application.routes.draw do
  get root 'pages#home' 
  get 'login', to: 'session#new' 
  get 'login', to: 'session#new' 
  get 'logout', to: 'session#destroy' 
end
