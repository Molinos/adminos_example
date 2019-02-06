require 'role_model'

class User < ApplicationRecord
  devise :two_factor_authenticatable,
         :otp_secret_encryption_key => ENV['OTP_SECRET_ENCRYPTION_KEY']

  include RoleModel

  devise :registerable, :recoverable,
    :rememberable, :validatable, :omniauthable

  # has_many :authentications, dependent: :destroy

  roles :admin
  scoped_search on: :email

  def reasonable_name
    email
  end

  def translated_roles
    role_symbols.map { |s| self.class.human_attribute_name(s) }.join ', '
  end
end
