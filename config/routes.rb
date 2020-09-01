Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all task
  get 'tasks', to: 'tasks#index'
  # read one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # create>>> Post the Form
  post 'tasks', to: 'tasks#create'
  # Get the form
  get 'task/new', to: 'tasks#new', as: :new
  # Update a task with get
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # Update a task with patch
  patch 'tasks/:id', to: 'tasks#update'
  # delete a task
  delete 'task/:id', to: 'tasks#destroy', as: :destroy
end
