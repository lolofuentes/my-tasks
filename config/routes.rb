Rails.application.routes.draw do

  # resources :restaurants
  # end

  # Rails.application.routes.draw do
  #  resources :restaurants, only: [:create, :index, :destroy]
  # end

  get    "tasks",          to: "task#index"

  # CREATE
  post   "tasks",          to: "tasks#create"
  get    "tasks/new",      to: "tasks#new",  as: :new_tasks

  #UPDATE
  get    "tasks/:id/edit", to: "task#edit", as: :edit_task
  patch  "tasks/:id",      to: "tasks#update"


  get    "tasks/:id",      to: "tasks#show", as: :task

  # NB: The `show` route needs to be *after* `new` route.
    
  
  
  delete "tasks/:id",      to: "tasks#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
