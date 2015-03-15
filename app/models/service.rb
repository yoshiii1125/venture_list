class Service < ActiveRecord::Base
  validates_presence_of :name, :fund_id, :resource_id
end
