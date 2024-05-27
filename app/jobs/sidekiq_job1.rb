class SidekiqJob1
  include Sidekiq::Job
  sidekiq_options queue: 'custom_queue', retry: 0

  def perform(*args)
    (1..5).each do |i|
      p 'Doing important work from sidekiq'
      sleep 5
    end
  end
end