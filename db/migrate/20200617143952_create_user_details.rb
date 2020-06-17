class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.string :address
      t.string :phone
      t.string :gender
      t.timestamps
    end
    add_foreign_key :user_details, :users, on_delete: :cascade
    add_index(:user_details, :user_id)
  end
end
