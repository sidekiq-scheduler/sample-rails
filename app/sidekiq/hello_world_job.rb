class HelloWorldJob
  include Sidekiq::Job

  def perform
    puts 'Hello world'
  end
end