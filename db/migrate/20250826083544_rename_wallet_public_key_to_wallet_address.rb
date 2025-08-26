class RenameWalletPublicKeyToWalletAddress < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :wallet_public_key, :wallet_address
  end
end
