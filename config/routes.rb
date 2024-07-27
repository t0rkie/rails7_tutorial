Rails.application.routes.draw do
  root "static_pages#home"
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/no_title"

  namespace :api do
    namespace :v1 do
      get "static_pages/home"
    end
  end

  namespace :test do
    get "test/index"
  end
end
