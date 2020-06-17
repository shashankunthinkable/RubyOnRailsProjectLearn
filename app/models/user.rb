class User < ApplicationRecord
  has_secure_password
  validates  :name,
             presence: true,
             uniqueness: {  case_sensitive: false },
             length: {  minimum: 3, maximum: 25}
  validates  :username,
             presence: true,
             uniqueness: {  case_sensitive: false },
             length: {  minimum: 3, maximum: 25}

  before_save { self.email = email.downcase }

  # RelationShips START
  has_one   :user_detail
  has_many  :articles
  has_many  :blogs
  # RelationShips END

  # @user.blogs.create(published_at: Time.now)    // One Way To Save User's Blogs
  # =========================================
  # saveUser = User.new
  # saveUser.valid?                                             #To Check Valid Fields
  # saveUser.save
  # saveUser.errors.messages, saveUser.errors.full_messages
end
