class AddNameToAlerts < ActiveRecord::Migration[7.1]
  def change
    add_column :alerts, :name, :string
  end
end
