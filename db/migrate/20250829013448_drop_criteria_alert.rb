class DropCriteriaAlert < ActiveRecord::Migration[7.1]
  def change
    drop_table :criteria_alerts
  end
end
