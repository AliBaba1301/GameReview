require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

# Valid user entries get registered
  test 'should save valid user' do
    user = User.new
    user.email = 'bob@example.com'
    user.password = '12345678'
    user.save
    assert user.valid?
  end

  test "should not allow duplicate emails" do
    user1 = User.create(email: "Matt@gmail.com", password: "hello1")
    user2 = User.new(email: "Matt@gmail.com", password: "hello")
    user1.save
    assert_not user2.save, "Saved a duplicate email"
  end
end
