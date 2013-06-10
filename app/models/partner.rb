class Partner < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :partner_countries
  
  
  def list_countries
    countries = []
    for country in self.partner_countries
      countries << country.name
    end
    return countries.join(", ")
  end
end
