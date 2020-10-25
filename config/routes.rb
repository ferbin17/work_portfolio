Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  constraints subdomain: 'todoapp' do
    mount Todoapp::Engine => "/"
  end

  root to: "ferbin#index"
end
