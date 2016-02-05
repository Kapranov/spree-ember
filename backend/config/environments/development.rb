Rails.application.configure do
  config.action_controller.asset_host = Rails.application.secrets.asset_host
  config.action_controller.perform_caching = false
  config.action_controller.include_all_helpers = true
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load

  config.action_mailer.default_url_options = { :host => Rails.application.secrets.smtp_address}
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    address:  Rails.application.secrets.smtp_address,
    port:     Rails.application.secrets.smtp_port,
    domain:   Rails.application.secrets.domain_name
  }

  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true

  config.cache_classes = false
  config.consider_all_requests_local = true
  config.eager_load = false
end
