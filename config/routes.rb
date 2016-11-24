Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:index, :new, :create] do
      resources :ingredients
    end
  end

  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
