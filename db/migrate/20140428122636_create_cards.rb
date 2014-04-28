class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :category
      t.belongs_to :user

      t.timestamps
    end
    add_index :cards, :user_id
  end
end
