class CreateKnihy < ActiveRecord::Migration[5.1]
  def change
    create_table :knihy do |t|
      t.string :nazev
      t.integer :autor_id
      t.integer :zanr_id
      t.string :isbn
      t.integer :nakladatelstvi_id
      t.integer :pocet_stran
      t.string :vydani
      t.string :rozmer
      t.string :rok_vydani
      t.string :vazba
      t.decimal :cena
      t.string :poznamka
      t.text :popis
      t.boolean :koupeno
      t.boolean :ziskano

      t.timestamps
    end
  end
end
