class HardJob
  include Sidekiq::Job

  def perform(*args)
    Rails.logger.info "something has been done"
  end
end
