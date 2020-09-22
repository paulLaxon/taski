Rails.application.routes.draw do
  get 'about', to: 'page#about'
  get 'contact', to: 'page#contact'
  get 'error', to: 'page#error'

  get 'blog', to: redirect('http://google.ca')

  resources :projects

  root 'page#home'

  get '*path', to: redirect('/error')
end
