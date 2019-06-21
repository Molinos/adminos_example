class ChangePollOptionColumnTypeToJsonb < ActiveRecord::Migration[5.2]
  def change
    change_column :poll_options, :option, :jsonb, using: 'option::jsonb'
  end
end
