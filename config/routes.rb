Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'ferbin/about', to: 'ferbin#about'
  get 'ferbin/works', to: 'ferbin#works'
  get 'ferbin/experience', to: 'ferbin#experience'
  get 'ferbin/education', to: 'ferbin#education'

  constraints subdomain: 'todoapp' do
    mount Todoapp::Engine => "/"
  end

  root to: "ferbin#index"
end
