class CreateTopicsUsersTable < ActiveRecord::Migration

  def self.up
    create_table :topics_users, id: false do |t|
      t.integer :topic_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table
  end
end

