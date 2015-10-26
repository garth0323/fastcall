class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.text :fields
      t.string :url
      t.integer :landing_page_id

      t.timestamps null: false
    end
  end
end
