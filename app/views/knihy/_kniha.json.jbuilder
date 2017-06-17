json.extract! kniha, :id, :nazev, :autor_id, :zanr_id, :isbn, :nakladatelstvi_id, :pocet_stran, :vydani, :rozmer, :rok_vydani, :vazba, :cena, :poznamka, :popis, :koupeno, :ziskano, :created_at, :updated_at
json.url kniha_url(kniha, format: :json)
