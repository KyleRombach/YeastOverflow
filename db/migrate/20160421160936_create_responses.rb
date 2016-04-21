class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text     :content,            null: false
      t.integer  :respondable_id
      t.string   :respondable_type
      t.integer  :user_id

      t.timestamps
    end
  end
end
