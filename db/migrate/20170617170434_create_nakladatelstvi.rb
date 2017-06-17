class CreateNakladatelstvi < ActiveRecord::Migration[5.1]
  def change
    create_table :nakladatelstvi do |t|
      t.string :nazev

      t.timestamps
    end
  end
end
