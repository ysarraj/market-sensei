class CreateCriteriaAlerts < ActiveRecord::Migration[7.1]
  def change
    create_table :criteria_alerts do |t|
      t.references :alert, null: false, foreign_key: true
      t.references :criterium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
