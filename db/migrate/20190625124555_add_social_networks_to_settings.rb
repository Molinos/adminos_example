class AddSocialNetworksToSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :settings, :twitter, :string
    add_column :settings, :facebook, :string
    add_column :settings, :github, :string
  end
end
