Rails.application.routes.draw do



  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  devise_for :users
    root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

