class PartnerController < ApplicationController
  def list_partners
    @partners = Partner.find(:all)
  end

end
