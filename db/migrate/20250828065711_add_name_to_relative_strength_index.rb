class AddNameToRelativeStrengthIndex < ActiveRecord::Migration[7.1]
  def change
    add_column :relative_strength_indices, :name, :string
  end
end
