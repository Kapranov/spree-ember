module Spree
  module Api
    Ams.setup do |config|
      config.cors_whitelist = Rails.application.secrets.cors_whitelist
    end
  end
end
