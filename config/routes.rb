Rails.application.routes.draw do
  # 名前付きルート rails routeで確認できる
  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/no_title", to: "static_pages#no_title"

  namespace :api do
    namespace :v1 do
      get "static_pages/home"
    end
  end

  namespace :test do
    get "test/index"
  end
end
