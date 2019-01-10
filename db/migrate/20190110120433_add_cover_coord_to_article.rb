class AddCoverCoordToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :cover_coord, :string
  end
end
