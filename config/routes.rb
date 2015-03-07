VentureList::Application.routes.draw do
  get "static_pages/about_us"
  resources :static_pages, only: '' do
    collection do
      get 'about_us'
    end
  end
end
