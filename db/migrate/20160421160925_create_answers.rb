class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text     :content,  null: false
      t.integer  :votes,    default: 0
      t.integer  :user_id

      t.timestamps
    end
  end
end
