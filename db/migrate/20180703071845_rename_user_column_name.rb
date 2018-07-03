class RenameUserColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :nickname, :name
  end
end
