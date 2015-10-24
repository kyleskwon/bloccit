Rails.application.routes.draw do



  resources :advertisements
#Is 'about' necessary in this situation? Changed to advertisements
  get 'about' => 'welcome#about'

  get 'advertisements' => 'welcome#advertisements'

  root to: 'welcome#index'
end
