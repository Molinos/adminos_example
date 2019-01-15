class AddCoverMobileCoordToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :cover_mobile_coord, :string
  end
end
