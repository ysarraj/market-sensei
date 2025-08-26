class CreateCriteria < ActiveRecord::Migration[7.1]
  def change
    create_table :criteria do |t|
      t.string :operand
      t.float :value
      t.references :indicatable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
