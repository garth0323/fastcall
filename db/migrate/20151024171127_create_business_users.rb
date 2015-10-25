class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|

      t.belongs_to :business, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
