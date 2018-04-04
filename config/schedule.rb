set :output, 'log/crontab.log'
set :environment, :production

every day, :at => '12am', roles: %i(app) do
  rake '-s sitemap:refresh'
end
