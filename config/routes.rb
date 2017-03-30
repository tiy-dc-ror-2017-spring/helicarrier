Rails.application.routes.draw do
  resources :flight_routes do
    resources :flights do
      member do
        patch :mark_as_arrived
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
