class CreateUserProverbsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_proverbs_users do |t|
      t.integer :user_id
      t.integer :proverb_id

      t.timestamps
    end

    add_index :user_proverbs_users, :user_id
    add_index :user_proverbs_users, :proverb_id
    add_index :user_proverbs_users, [:user_id, :proverb_id], unique: true
  end
end
