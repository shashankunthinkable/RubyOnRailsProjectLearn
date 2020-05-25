class AddNewColumnsToBlogsTable < ActiveRecord::Migration[6.0]
  def change
    # add_reference :blogs, :user, {foreign_key: true}
    # This Above is joint of below, but not work for 'on_delete: :cascade'
=begin
    add_column  :blogs,  :user_id, :integer
    add_foreign_key :blogs, :users
    add_index(:blogs, :user_id)
=end
    add_column  :blogs,  :user_id, :integer
    add_foreign_key :blogs, :users, on_delete: :cascade
    add_index(:blogs, :user_id)
  end
end
