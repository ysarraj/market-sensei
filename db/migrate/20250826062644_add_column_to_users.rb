class AddColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :wallet_public_key, :string
  end
end
