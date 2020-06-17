class Article < ApplicationRecord

  # RelationShips START
  belongs_to  :user
  # RelationShips END

=begin
   Article.update_all(column: value)
=end
end
