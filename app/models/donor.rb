class Donor < ApplicationRecord
  self.table_name = 'Donors'

  alias_attribute :name, :'Donor Name'
  alias_attribute :contact, :'Contact person (for business)'
  alias_attribute :type, :'Donor Type'

end
