class AddSecondValueToCriteria < ActiveRecord::Migration[7.1]
  def change
    add_column :criteria, :first_value_id, :integer
    add_column :criteria, :second_value_id, :integer
  end
end
