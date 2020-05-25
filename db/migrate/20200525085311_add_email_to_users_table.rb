class AddEmailToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string
    change_column_null :users, :email, false,'aaa@gmail.com'
    # Above 'change_column_null' only fill rows, that already present with `default` value, not for new data
  end
end
