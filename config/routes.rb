Rails.application.routes.draw do

  resources :advertisements
  resources :posts
#Is 'about' necessary in this situation?
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
