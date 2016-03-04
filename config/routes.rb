Rails.application.routes.draw do
  resources :candidates, except: [:new, :edit]

end