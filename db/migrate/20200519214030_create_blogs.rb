class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string  :title
      t.string  :description
    end

    Blog.create  title:  'My First Blog Title',
                 description: 'My First Blog Description',
  end
end

#This migration first adds the blogs table,
# then creates the very first row in it using the Active Record model that relies on the table.
