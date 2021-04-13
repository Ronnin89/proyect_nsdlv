class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :rut
      t.string :names
      t.string :last_names
      t.string :date_of_birth
      t.string :nationality
      t.integer :sex
      t.string :address
      t.string :phone
      t.integer :type_profile

      t.timestamps
    end
  end
end
