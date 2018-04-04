set :output, 'log/crontab.log'
set :environment, :production

every 1.day, :at => '12am', roles: %i(app) do
  rake '-s sitemap:refresh'
end
