class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :service_has_categories
  has_many :services, through: :service_has_categories
end
