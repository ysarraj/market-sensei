class CreateRelativeStrengthIndices < ActiveRecord::Migration[7.1]
  def change
    create_table :relative_strength_indices do |t|
      t.string :interval
      t.integer :time_period

      t.timestamps
    end
  end
end
