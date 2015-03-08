VentureList::Application.routes.draw do
  resources :services, only: [:index, :show, :edit]

  resources :static_pages, only: '' do
    collection do
      get 'about_us'
    end
  end
end
