Rails.application.routes.draw do
  
  devise_for :authors
  #get 'pages/index'
  root to: 'readers/pages#index'
  get '/blog/:id' => 'readers/books#show', as: :blog_book
  scope module: 'authors' do
    resources :books
  end
  # Ex:- scope :active, -> {where(:active => true)}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
