class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title, :limit => 512
      t.text :content
      t.integer :no_of_comments, :limit => 4
      t.references :blogger

      t.timestamps
    end
    add_index :blogs, :blogger_id
  end
end
