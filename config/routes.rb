Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/school_classes/new', to: 'school_classes#new', as: 'new_school_class'
  get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'
  post '/school_classes', to: 'school_classes#create'
  get '/school_classes/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'
  patch '/school_classes/:id', to: 'school_classes#update'

  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create'
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch '/students/:id', to: 'students#update'

  # resources :students, except: [:destroy, :index]
  # resources :school_classes, except: [:destroy, :index]
  # the above is the cheat way to abstract/DRY out writing the routes manually
  
end
