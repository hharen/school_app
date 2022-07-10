class User < ApplicationRecord
  validates :first_name, :last_name, :email, :encrypted_password, presence: true
  validates :email, uniqueness: true, format: { with: /@/, message: I18n.t('user.valid_email')}

  def name
    [first_name, last_name].compact.join(' ')
  end
end
