source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails'
gem 'mysql2'
gem 'puma'
gem 'turbolinks'

# UI/UX
gem 'uglifier'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'coffee-rails'
gem 'jbuilder'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'sass-rails'
gem 'haml-rails'
gem 'erb2haml'
gem 'wareki'

# ユーザー機能
gem 'devise'
gem 'devise-i18n'
# gem 'bcrypt' #パスワード暗号化機能を提供してくれる。本番に上げる際はコメントアウトを外す。

# 日本語化
gem 'rails-i18n'

# 画像表示
gem 'carrierwave'
gem 'fog-aws'
gem 'mini_magick'

# 検索機能
gem 'ransack'

# テキストのURLをリンクにする
gem 'rails_autolink'

# ページネーション
gem 'kaminari'
gem 'kaminari-bootstrap'

# パンくず
gem 'gretel'

# gem 'redis'

# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'capistrano'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'bullet'
end

group :production do
  gem 'unicorn'
  # Google Analytics
  gem 'google-analytics-rails'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
