class NoopWorker
  include Sidekiq::Worker

  def perform
    puts "Testing...."
  end
end
