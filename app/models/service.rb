class Service < ActiveRecord::Base
  validates_presence_of :name, :fund_id, :source_id
end
