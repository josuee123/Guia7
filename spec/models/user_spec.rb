require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context "username" do
    it { should validate_presence_of :username }
    it { should validate_length_of(:username).is_at_most(15) }
    it { should_not allow_value("123123").for(:username) }
    it { should allow_value("abcd").for(:username) }

    context "Password" do
  it { should validate_presence_of :password }
  it { should validate_length_of(:password).is_equal_to(8) }
    end
  end
end
