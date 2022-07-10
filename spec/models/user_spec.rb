require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users

  let(:user) { users(:anne_france) }

  describe '#admin?' do
    it 'checks if a user is an admin' do
      expect(user.is_admin?).to be false
    end
  end
end
