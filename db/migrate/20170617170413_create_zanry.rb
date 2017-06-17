class CreateZanry < ActiveRecord::Migration[5.1]
  def change
    create_table :zanry do |t|
      t.string :nazev

      t.timestamps
    end
  end
end
