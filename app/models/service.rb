class Service < ActiveRecord::Base
  validates_presence_of :name, :fund_id, :source_id
  has_many :service_has_categories
  has_many :categories, through: :service_has_categories
  belongs_to :fund
  belongs_to :status
  belongs_to :source
end
