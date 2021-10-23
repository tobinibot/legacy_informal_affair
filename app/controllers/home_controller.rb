class HomeController < ApplicationController
  def index
    @items = Item.all.order(Arel.sql('"Item Number"'))
  end
end
