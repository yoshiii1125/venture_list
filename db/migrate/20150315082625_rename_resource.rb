class RenameResource < ActiveRecord::Migration
  def change
    rename_table :resources, :sources
    rename_column :services, :resource_id, :source_id
    change_column :services, :web_url, :string
  end
end
