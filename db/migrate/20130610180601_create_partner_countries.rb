class CreatePartnerCountries < ActiveRecord::Migration
  def change
    create_table :partner_countries do |t|

      t.timestamps
    end
  end
end
