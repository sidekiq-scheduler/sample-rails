# frozen_string_literal: true

Sidekiq.configure_server do |config|
  config.redis = { url: Rails.configuration.redis_sidekiq[:url] }

  config.log_formatter = Sidekiq::Logger::Formatters::WithoutTimestamp.new
end

Sidekiq.configure_client do |config|
  config.redis = { url: Rails.configuration.redis_sidekiq[:url] }
end

Sidekiq.default_job_options = { "backtrace" => true }
