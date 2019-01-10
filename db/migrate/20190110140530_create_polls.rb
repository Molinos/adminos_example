class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string   :name
      t.boolean  :published, default: true, null: false
      t.string   :slug



      t.timestamps
    end
  end
end
