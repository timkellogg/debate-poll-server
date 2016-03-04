Rails.application.routes.draw do
  resources :candidates, except: [:new, :edit]
  
  match '*any' => 'application#options', :via => [:options]
end