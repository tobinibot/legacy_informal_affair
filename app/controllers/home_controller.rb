class HomeController < ApplicationController
  def items_2019
    @items = Item2019.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
    end

  def items_2018
    @items = Item2018.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2017
    @items = Item2017.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2016
    @items = Item2016.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2015
    @items = Item2015.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2014
    @items = Item2014.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2013
    @items = Item2013.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2012
    @items = Item2012.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end

  def items_2011
    @items = Item2011.includes(:donor, :committee_contact).all.order(Arel.sql('"Item Number"'))
  end
end
