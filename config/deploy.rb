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

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end

  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # unix command execute status;
      # 0 : true
      # 1 : false
      old_env = capture(
        "/usr/bin/test /path/to/secret/yml/env.yml -ot #{fetch(:deploy_to)}/shared/tmp/pids/unicorn.pid; echo $?"
      )
      old_ruby = capture(
        "/usr/bin/test /home/app/.rbenv/versions/#{fetch(:rbenv_ruby)} -ot #{fetch(:deploy_to)}/shared/tmp/pids/unicorn.pid; echo $?"
      )
      if old_env == '0' && old_ruby == '0'
        info 'env.yml and ruby version is old. restat unicorn.'
        invoke 'unicorn:restart'
      else
        info 'env.yml or ruby version is new. stop and start(reload env.yml) unicorn.'
        invoke 'unicorn:stop'
        execute :sleep, fetch(:unicorn_stop_sleep_time)
        invoke 'unicorn:start'
      end
    end
  end

  after :publishing, :restart
end
