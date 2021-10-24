class Item < ApplicationRecord
  self.table_name = 'Items'

  alias_attribute :title, :'Item Display Title'
  alias_attribute :description, :'Item Description'
  alias_attribute :winning_bid, :'Winning Bid'

  has_one :donor, primary_key: 'Donor ID', foreign_key: 'Donor ID'
end
