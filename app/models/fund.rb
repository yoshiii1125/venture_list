class Fund < ActiveRecord::Base
  validates_presence_of :name, :web_url
end
