class CreateProverbs < ActiveRecord::Migration[5.1]
  def change
    create_table :proverbs do |t|
      t.string :proverb

      t.timestamps
    end
  end
end
