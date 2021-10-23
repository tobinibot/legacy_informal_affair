class HomeController < ApplicationController
  def index
    @items = Item.includes(:donor, :sale).order(Arel.sql('"Item Number"'))
  end
end
