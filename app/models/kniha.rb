# == Schema Information
#
# Table name: knihy
#
#  id                :integer          not null, primary key
#  nazev             :string
#  autor_id          :integer
#  zanr_id           :integer
#  isbn              :string
#  nakladatelstvi_id :integer
#  pocet_stran       :integer
#  vydani            :string
#  rozmer            :string
#  rok_vydani        :string
#  vazba             :string
#  cena              :decimal(, )
#  poznamka          :string
#  popis             :text
#  koupeno           :boolean
#  ziskano           :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Kniha < ApplicationRecord
  belongs_to :autor
  belongs_to :zanr
  belongs_to :nakladatelstvi

  def jmeno_autora
    autor.try(:cele_jmeno)
  end

  def nazev_zanru
    zanr.try(:nazev)
  end

  def nazev_nakladatelstvi
    nakladatelstvi.try(:nazev)
  end
end
