Codemalaysia::Application.routes.draw do

  get "contact_us/teacher"
  get "contact_us/project_owner"
  # get "contact_us/create"
  resource :contact_us, only: [ :create]
  root to: 'high_voltage/pages#show', id: 'index'

end
