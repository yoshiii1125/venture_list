class Source < ActiveRecord::Base
  validates_presence_of :name, :web_url
  has_many :services
end
