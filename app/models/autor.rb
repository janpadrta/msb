# == Schema Information
#
# Table name: autori
#
#  id         :integer          not null, primary key
#  jmeno      :string
#  prijmeni   :string
#  narodnost  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Autor < ApplicationRecord
  has_many :knihy

  def cele_jmeno
    "#{prijmeni.upcase} #{jmeno}"
  end
end
