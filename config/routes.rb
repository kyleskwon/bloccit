Rails.application.routes.draw do



  resources :advertisements
  resources :posts
#Is 'about' necessary in this situation? Changed to advertisements
  get 'about' => 'welcome#about'
#no need for code below?
#  get 'advertisements' => 'welcome#advertisements'

  root to: 'welcome#index'
end
