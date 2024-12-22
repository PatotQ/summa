Rails.application.routes.draw do
  # Configuración de Devise para usuarios
  devise_for :usuarios

  # Página principal
  root "ideas#index"

  # Rutas para otros recursos
  resources :ideas  # CRUD para Ideas
  resources :obras  # CRUD para Obras
end
