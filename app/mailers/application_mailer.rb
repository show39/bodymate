class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.secrets.user_name
end
