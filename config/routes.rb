MyBlog::Application.routes.draw do

  resources :users

  get '/' => "home#index", as: :home_page
end















