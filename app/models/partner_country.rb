class PartnerCountry < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :partner
end
