class CreateAutori < ActiveRecord::Migration[5.1]
  def change
    create_table :autori do |t|
      t.string :jmeno
      t.string :prijmeni
      t.string :narodnost

      t.timestamps
    end
  end
end
