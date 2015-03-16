desc 'Scraping venture list'
task :scrape_venture_list => :environment do
  require 'open-uri'

  url = 'http://www.seed-db.com/accelerators/view?acceleratorid=1011'
  charset = nil
  html = open(url) do |f|
    charset = f.charset
    f.read
  end

  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.css('table#seedcos tbody tr').each_with_index do |line, i|
    puts i + 1
    name = line.children[3].children[1].try(:text)
    link = line.children[5].children[1].attributes.first[1].try(:value)
    funding = line.children[13].children[1].try(:text)
    status = line.children[1].children[1].try(:text)
    funded_at = line.children[7].children.text.to_date
    status_id = Status.find_or_create_by(name: status).id
    Service.find_or_create_by(name: name) do |service|
      service.web_url = link
      service.funding  = funding
      service.fund_id = 1 # Y Combinator
      service.source_id =  1 # Seed-DB
      service.status_id = status_id
      service.funded_at = funded_at
    end
    # 同時にメールかスラックに通知する
  end
end
