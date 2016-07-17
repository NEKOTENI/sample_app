Rails.application.routes.draw do
  get 'sessions/new'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help' #controller名#action名
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'

  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
end
#列を揃えるのは、readableにするため。
