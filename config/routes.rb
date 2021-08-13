Rails.application.routes.draw do
  Rails.application.routes.draw do

    get    "tasks",          to: "task#index"
    post   "tasks",          to: "tasks#create"
  
    get    "tasks/new",      to: "tasks#new",  as: :new_tasks
    
    get    "tasks/:id/edit", to: "task#edit", as: :edit_task
  # NB: The `show` route needs to be *after* `new` route.
    get    "tasks/:id",      to: "tasks#show", as: :task
  
    patch  "tasks/:id",      to: "tasks#update"
  
    delete "tasks/:id",      to: "tasks#destroy"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
