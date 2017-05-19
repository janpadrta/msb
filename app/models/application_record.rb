# frozen_string_literal: true

# Hlavni ridici trida pro ActiveRecord
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
