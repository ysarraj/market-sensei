class AddAlertRefToCriteria < ActiveRecord::Migration[7.1]
  def change
    add_reference :criteria, :alert, null: false, foreign_key: true
  end
end
