class Item2018 < ApplicationRecord
  self.table_name = 'Items 2018'

  alias_attribute :title, :'Item Display Title'
  alias_attribute :description, :'Item Description'

  has_one :donor, primary_key: 'DonorID', foreign_key: 'Donor ID'
end
