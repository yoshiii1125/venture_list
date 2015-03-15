desc 'Scraping venture list'
task :scrape_venture_list => :environment do
  # 必要なさそうなら削除する
  require 'open-uri'

  # urlと文字種類指定
  url = 'http://www.seed-db.com/accelerators/view?acceleratorid=1011'
  charset = nil
  html = open(url) do |f|
    charset = f.charset
    f.read
  end

  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.css('table#seedcos tbody tr')
  # parse する
  # DBに同じものがあるかチェックする
  # ない場合は次へ行く
  # ある場合はDBに登録する
  # 同時にメールかスラックに通知する
end
