class CreateUserProverbsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_proverbs_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :proverb, index: true, foreign_key: true

      t.timestamps
    end
  end
end
