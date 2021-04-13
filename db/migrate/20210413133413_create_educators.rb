class CreateEducators < ActiveRecord::Migration[5.2]
  def change
    create_table :educators do |t|
      t.integer :type_educator
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
