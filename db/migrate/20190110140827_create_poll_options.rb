class CreatePollOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_options do |t|
      t.string :option
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
