Rails.application.routes.draw do
  root             'static_pages#home'
  get 'help'    => 'static_pages#help' #controller名#action名
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
end
#列を揃えるのは、readableにするため。
