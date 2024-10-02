Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  Rails.application.routes.draw do
    # Define la ruta raíz para que apunte a la acción 'home' del controlador 'static_pages'
    root 'static_pages#home'
  
    # Otras rutas de tu aplicación pueden ir aquí
  end
  
end