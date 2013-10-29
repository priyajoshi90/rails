class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :responder
      t.text :response1
      t.references :discussion

      t.timestamps
    end
    add_index :responses, :discussion_id
  end
end
