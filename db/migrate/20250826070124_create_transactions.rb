class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.float :from_token_price
      t.float :to_token_price
      t.string :tx_hash
      t.float :from_token_unit
      t.float :to_token_unit
      t.references :user, null: false, foreign_key: true
      t.references :from_token, foreign_key: { to_table: :tokens }
      t.references :to_token, foreign_key: { to_table: :tokens }

      t.timestamps
    end
  end
end
