class AddColumnsToBlogsTable < ActiveRecord::Migration[6.0]
  def change
    add_column  :blogs,:created_at,:datetime
    add_column  :blogs,:updated_at,:datetime
  end
end
