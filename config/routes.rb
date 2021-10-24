Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#items_2019'

  get '2019' => 'home#items_2019', as: 'items_2019'
  get '2018' => 'home#items_2018', as: 'items_2018'
end
