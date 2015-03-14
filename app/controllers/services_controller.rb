class ServicesController < ApplicationController
  def index
    require 'open-uri'
    url = 'http://www.seed-db.com/accelerators/view?acceleratorid=1011'
    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    @services = doc.css('table#seedcos tbody tr').first
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
