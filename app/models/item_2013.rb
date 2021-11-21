class Item2013 < ApplicationRecord
  self.table_name = 'Items 2013'

  alias_attribute :title, :'Item Display Title'
  alias_attribute :description, :'Item Description'
  alias_attribute :winning_bid, :'Winning Bid'

  has_one :donor, primary_key: 'DonorID', foreign_key: 'Donor ID'
  has_one :committee_contact, primary_key: 'CommitteeContactID', foreign_key: 'CommitteeContactID'
end
