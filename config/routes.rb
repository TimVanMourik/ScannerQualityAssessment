Rails.application.routes.draw do

  root "scanners#index"

  resources :scanners do
    resources :sessions,  except: [:index] do
      resources :sequence_instances
    end
  end
  resources :sequences


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
