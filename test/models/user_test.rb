require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "User Name", email: 'qwer@qwe.com', password: '123456')
  end
end
