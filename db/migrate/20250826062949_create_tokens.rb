class CreateTokens < ActiveRecord::Migration[7.1]
  def change
    create_table :tokens do |t|
      t.string :token_contract
      t.string :name

      t.timestamps
    end
  end
end
