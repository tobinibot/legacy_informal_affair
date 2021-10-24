class HomeController < ApplicationController
  def items_2019
    @items = Item.includes(:donor).all.order(Arel.sql('"Item Number"'))
    # @items = Item.where('"Item Number" = 55')
    end

  def items_2018
    @items = Item2018.includes(:donor).all.order(Arel.sql('"Item Number"'))
    # @items = Item.where('"Item Number" = 55')
  end
end
