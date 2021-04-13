class CreateJoinTableEducatorChild < ActiveRecord::Migration[5.2]
  def change
    create_join_table :educators, :children do |t|
      t.index [:educator_id, :child_id]
      t.index [:child_id, :educator_id]
    end
  end
end
