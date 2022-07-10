class User < ApplicationRecord
  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true, format: { with: /@/, message: I18n.t('user.valid_email') }

  has_secure_password

  def name
    [first_name, last_name].compact.join(' ')
  end
end
