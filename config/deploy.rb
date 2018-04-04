# config valid only for current version of Capistrano
lock "3.8.2"

set :application, "bodymate"
set :repo_url, "git@github.com:show39/bodymate.git"
set :deploy_to, '/var/www/bodymate'

set :ssh_options, :port => "1122"

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

set :ssh_options, auth_methods: ['publickey'],
                  keys: ['/Users/user/.ssh/id_rsa']

set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }
set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }
set :keep_releases, 5
set :linked_files, %w{ config/secrets.yml }

set :default_env, rails_master_key: ENV['RAILS_MASTER_KEY'] || File.read('./config/secrets.yml.key')

after 'deploy:publishing', 'deploy:restart'
after 'deploy:restart', 'deploy:sitemap'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
  desc 'Generate sitemap'
  task :sitemap do
    on roles(:app) do
      within release_path do
        execute :bundle, :exec, :rake, 'sitemap:create RAILS_ENV=production'
      end
    end
  end
end
