class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
