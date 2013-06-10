class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|

      t.timestamps
    end
  end
end
