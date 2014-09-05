Codemalaysia::Application.routes.draw do

  get "contact_us/:form_page" => 'contact_us#form_page', as: 'contact_form'
  get "location"              => 'high_voltage/pages#show', id: "location"
  get "collaborate"           => 'high_voltage/pages#show', id: "collaborate"
  get "learn"                 => 'high_voltage/pages#show', id: "learn"

  resource :contact_us, only: [ :create]
  root to: 'high_voltage/pages#show', id: 'index'

end
