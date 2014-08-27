Codemalaysia::Application.routes.draw do

  get "contact_us/:form_page" => 'contact_us#form_page', as: 'contact_form'

  resource :contact_us, only: [ :create]
  root to: 'high_voltage/pages#show', id: 'index'

end
