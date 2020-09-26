Rails.application.routes.draw do

  devise_for :users
  get 'about', to: 'page#about'
  get 'contact', to: 'page#contact'
  get 'error', to: 'page#error'

  get 'blog', to: redirect('http://google.ca')

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'page#home'

  get '*path', to: redirect('/error')
end
