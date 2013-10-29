class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :topic
      t.text :detail
      t.references :blogger

      t.timestamps
    end
    add_index :discussions, :blogger_id
  end
end
