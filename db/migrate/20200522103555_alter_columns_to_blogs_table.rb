class AlterColumnsToBlogsTable < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:blogs, :user_id, nil)
  end
end
