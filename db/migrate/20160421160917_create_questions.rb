class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string   :title,    null: false
      t.text     :content,  null: false
      t.integer  :votes,    default: 0
      t.integer  :views,    default: 0
      t.integer  :user_id

      t.timestamps
    end
  end
end


