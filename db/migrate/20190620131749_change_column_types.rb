class ChangeColumnTypes < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :name, :jsonb, using: 'name::jsonb'
    change_column :articles, :title, :jsonb, using: 'title::jsonb'
    change_column :features, :name, :jsonb, using: 'name::jsonb'
    change_column :pages, :name, :jsonb, using: 'name::jsonb'
    change_column :pages, :nav_name, :jsonb, using: 'nav_name::jsonb'
    change_column :pages, :body, :jsonb, using: 'body::jsonb'
    change_column :polls, :name, :jsonb, using: 'name::jsonb'
  end
end
