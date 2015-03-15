class ServiceHasCategory < ActiveRecord::Base
  validates_presence_of :service_id, :category_id
end
