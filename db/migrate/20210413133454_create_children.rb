class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :id_fundation
      t.string :grade
      t.string :phone_secure
      t.string :entry
      t.string :egress
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
