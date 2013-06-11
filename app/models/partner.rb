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
  
  def self.list_partner_countries
    return_data = self.find_by_sql("SELECT c.iso3 as name, count(*) as counter FROM partner_countries a
          left outer join countries c on c.iso2 = a.iso_code
          where c.iso3 != ''  group by c.iso3")
    return return_data
  end
  
end
