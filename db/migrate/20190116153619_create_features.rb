class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string   :name
      t.boolean  :published, default: true, null: false
      t.string   :slug
      t.text     :meta_description
      t.string   :meta_title
      t.integer  :parent_id
      t.integer  :depth, default: 0
      t.integer  :lft
      t.integer  :rgt

      t.timestamps
    end

    add_index :features, :parent_id
    add_index :features, :rgt
  end
end
