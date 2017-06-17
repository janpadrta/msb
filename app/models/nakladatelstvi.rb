# == Schema Information
#
# Table name: nakladatelstvi
#
#  id         :integer          not null, primary key
#  nazev      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Nakladatelstvi < ApplicationRecord
  has_many :knihy
end
