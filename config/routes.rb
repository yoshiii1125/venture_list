VentureList::Application.routes.draw do
  root to: 'services#index'
  resources :services, only: [:index, :show, :edit]

  resources :static_pages, only: '' do
    collection do
      get 'about_us'
    end
  end
end
