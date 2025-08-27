class CreatePreferences < ActiveRecord::Migration[7.1]
  def change
    create_table :preferences do |t|
      t.string :theme
      t.string :locale
      t.string :market
      t.string :toolbar
      t.belongs_to :user, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
