class CreateMsgs < ActiveRecord::Migration[6.0]
  def change
    create_table :msgs do |t|
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end
