require 'rails_helper'

describe Merchant, test: :model do
  describe 'attributes' do
    it { should have_db_column(:name).of_type(:string) }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
  end
end
