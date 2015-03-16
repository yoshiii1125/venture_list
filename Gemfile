source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.1'

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end

gem 'sass-rails', '4.0.5'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'font-awesome-sass'
gem 'nokogiri'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'
gem 'link_thumbnailer'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

# Uploader
gem 'kaminari'                 # ページャ
gem 'rails_config'             # 定数管理
gem 'dotenv-rails'             # 環境変数管理
gem 'sitemap_generator'        # サイトマップ生成
gem 'whenever', :require => false   # cronを登録できる
gem 'exception_notification'   # エラーが発生したらメールを送ってくれる
gem 'newrelic_rpm'             # パフォーマンス監視サービスを利用できる

group :development do
  gem 'sqlite3', '1.3.8'
  gem 'rails-erd'              # モデルのER図をPDFで出力してくれる
  gem 'spring'                 # RspecなどでRailsをプリロードする
  gem 'capistrano'             # デプロイツール
  # gem 'guard'                # ファイルの変更を監視して作業を自動化 ※bundlerを使わないほうがいいためコメントアウト

  # debug
  gem 'better_errors'          # エラー画面を見やすくする
  gem 'binding_of_caller'      # better_errorsのエラー画面でREPLが使える
  gem 'tapp'                   # プリントデバッグがしやすくなる
  gem 'pry-rails'              # railsでpryが使える
  gem 'pry-byebug'             # pryでデバックコマンドが使える
  gem 'awesome_print'          # プリントデバッグの出力を整形
  gem 'hirb'                   # SQLの結果を見やすく整形してくれる
  gem 'hirb-unicode'           # hirbの日本語対応
end

group :development, :test do
  gem 'rspec'                  # テストツール
  gem 'rspec-rails'            # RailsでRspecが使える
end

group :test do
  gem 'factory_girl_rails'     # テストデータの生成
  gem 'database_cleaner'       # テスト実行後にDBをクリア
  gem 'capybara'               # ブラウザでの操作をシミュレートしてテストができる
end
