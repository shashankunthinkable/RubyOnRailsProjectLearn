class AddPasswordDigestToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column  :users, :password_digest, :string
    change_column_null :users, :password_digest, false,'123456'
  end
end
