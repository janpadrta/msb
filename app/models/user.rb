# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                         :integer          not null, primary key
#  email                      :string           not null
#  crypted_password           :string
#  salt                       :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  last_login_at              :datetime
#  last_logout_at             :datetime
#  last_activity_at           :datetime
#  last_login_from_ip_address :string
#
class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
end
