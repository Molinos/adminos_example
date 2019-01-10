class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string   :name
      t.boolean  :published, default: true, null: false
      t.string   :slug
      t.text     :meta_description
      t.string   :meta_title
      t.string :title
      t.date :publish_at
      t.text :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :articles, :tags
  end
end
