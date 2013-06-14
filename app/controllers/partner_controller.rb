class PartnerController < ApplicationController
  def list_partners
    @partners = Partner.find(:all)
    @partner_country_count = Partner.list_partner_countries()
  end
  
  def view_partner
    @partner = Partner.find(params[:id])
  end

end
