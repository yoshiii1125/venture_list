class ServiceHasCategory < ActiveRecord::Base
  validates_presence_of :service_id, :category_id
  belongs_to :service
  belongs_to :category
end
