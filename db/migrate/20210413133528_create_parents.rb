class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :relation
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
