VentureList::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'services#index'
  resources :services, only: [:index, :show, :edit]

  resources :static_pages, only: '' do
    collection do
      get 'about_us'
    end
  end
end
