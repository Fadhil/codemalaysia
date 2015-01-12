Codemalaysia::Application.routes.draw do

  get "contact_us/:form_page" => 'contact_us#form_page', as: 'contact_form'
  get "location"              => 'high_voltage/pages#show', id: "location"
  get "collaborate"           => 'high_voltage/pages#show', id: "collaborate"
  get "learn"                 => 'high_voltage/pages#show', id: "learn"
  get 'schedule'              => 'high_voltage/pages#show', id: 'schedule'
  get 'shedule'               => 'high_voltage/pages#show', id: 'schedule'
  get 'projects'              => 'high_voltage/pages#show', id: 'projects'
  get 'students/:id'          => 'static_pages#students', as: 'students'

  resource :contact_us, only: [ :create]
  root to: 'high_voltage/pages#show', id: 'index'

end
