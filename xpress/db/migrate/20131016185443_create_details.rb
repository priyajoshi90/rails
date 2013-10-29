class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :gender, :limit => 6
      t.text :address
      t.string :role, :limit => 10
      t.string :hobbies
      t.references :blogger

      t.timestamps
    end
    add_index :details, :blogger_id
  end
end
