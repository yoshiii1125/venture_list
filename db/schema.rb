# encoding: UTF-8

ActiveRecord::Schema.define(version: 20150315054933) do

  create_table "categories", force: true do |t|
    t.string "name", null: false
  end

  create_table "corps", force: true do |t|
    t.string  "name", null: false
    t.integer "country_id"
  end

  create_table "countries", force: true do |t|
    t.string "name", null: false
  end

  create_table "funds", force: true do |t|
    t.string "name",    null: false
    t.string "web_url", null: false
  end

  create_table "resources", force: true do |t|
    t.string "name",    null: false
    t.string "web_url", null: false
  end

  create_table "service_has_categories", force: true do |t|
    t.integer "service_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "services", force: true do |t|
    t.string  "name",        null: false
    t.string  "description"
    t.integer "fund_id",     null: false
    t.integer "status_id"
    t.integer "web_url"
    t.integer "resource_id", null: false
  end

  create_table "status", force: true do |t|
    t.string "name", null: false
  end

end
