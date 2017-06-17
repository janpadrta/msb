# == Schema Information
#
# Table name: zanry
#
#  id         :integer          not null, primary key
#  nazev      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Zanr < ApplicationRecord
  has_many :knihy
end
