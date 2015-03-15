class CreateTables < ActiveRecord::Migration
  def change
    create_table :corps do |t|
      t.string :name, null: false
      t.integer :country_id
    end
    create_table :categories do |t|
      t.string :name, null: false
    end
    create_table :funds do |t|
      t.string :name, null: false
      t.string :web_url, null: false
    end
    create_table :resources do |t|
      t.string :name, null: false
      t.string :web_url, null:false
    end
    create_table :services do |t|
      t.string :name, null: false
      t.string :description
      t.integer :fund_id, null: false
      t.integer :status_id
      t.integer :web_url
      t.integer :resource_id, null: false
    end
    create_table :service_has_categories do |t|
      t.integer :service_id, null: false
      t.integer :category_id, null: false
    end
    create_table :statuses do |t|
      t.string :name, null: false
    end
    create_table :countries do |t|
      t.string :name, null: false
    end
  end
end
