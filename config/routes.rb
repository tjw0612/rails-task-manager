Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list all
  get "tasks", to: "tasks#index"
  # create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # list details of one
  get "tasks/:id", to: "tasks#show", as: :task
  # edit details
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update", as: :task_update
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end
