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
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jbuilder'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'sass-rails'
gem 'haml-rails'
gem 'erb2haml'

# ユーザー機能
gem 'devise'
gem 'devise-i18n'

# 日本語化
gem 'rails-i18n'

# テキストのURLをリンクにする
gem 'rails_autolink'

# ページネーション
gem 'kaminari'

# パンくず
gem 'gretel'

# gem 'redis'
# gem 'bcrypt'

# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'bullet'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
