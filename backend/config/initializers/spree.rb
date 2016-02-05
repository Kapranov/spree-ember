Spree.config do |config|
  # config.track_inventory_levels = false
end

Spree.user_class = Rails.application.secrets.user_class
