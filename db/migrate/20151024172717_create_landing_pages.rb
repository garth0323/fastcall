class CreateLandingPages < ActiveRecord::Migration
  def change
    create_table :landing_pages do |t|
      t.string :url
      t.string :name
      t.integer :business_id

      t.timestamps null: false
    end
  end
end
