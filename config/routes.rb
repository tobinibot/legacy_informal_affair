Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#items_2019'

  get '2019' => 'home#items_2019', as: 'items_2019'
  get '2018' => 'home#items_2018', as: 'items_2018'
  get '2017' => 'home#items_2017', as: 'items_2017'
  get '2016' => 'home#items_2016', as: 'items_2016'
  get '2015' => 'home#items_2015', as: 'items_2015'
  get '2014' => 'home#items_2014', as: 'items_2014'
  get '2013' => 'home#items_2013', as: 'items_2013'
  get '2012' => 'home#items_2012', as: 'items_2012'
  get '2011' => 'home#items_2011', as: 'items_2011'
end
