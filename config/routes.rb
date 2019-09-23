Rails.application.routes.draw do
  resources :students, only: [:new, :show, :index, :edit, :create, :update]
  resources :school_classes, only: [:new, :show, :index, :edit, :create, :update]




  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
