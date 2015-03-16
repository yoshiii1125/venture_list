class AddCorpIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :corp_id, :integer
  end
end
