class AddDescriptionToAlerts < ActiveRecord::Migration[7.1]
  def change
    add_column :alerts, :description, :string
  end
end
