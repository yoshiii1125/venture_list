class AddCoulumnFundingToService < ActiveRecord::Migration
  def change
    add_column :services, :funding, :integer
    add_column :services, :funded_at, :datetime
  end
end
