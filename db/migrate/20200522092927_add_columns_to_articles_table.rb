class AddColumnsToArticlesTable < ActiveRecord::Migration[6.0]
  def change
    add_column  :articles,  :user_id, :integer
    change_column_default(:articles, :user_id, '1')
    # add_reference :articles, :user, foreign_key: true   # Use in case of, when column(user_id) not exist
    add_foreign_key :articles, :users, on_delete: :cascade
  end
end
