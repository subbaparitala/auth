Rails.application.routes.draw do
  devise_for :users do
    get 'logout' => 'devise/sessions#destroy'
  end

  resources :hellos
  root 'hellos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
