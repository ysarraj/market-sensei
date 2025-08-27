class AddSymbolToToken < ActiveRecord::Migration[7.1]
  def change
    add_column :tokens, :symbol, :string
  end
end
