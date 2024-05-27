class SidekiqJob2 < ApplicationJob
  queue_as :low

  def perform(*args)
    (1..3).each do |i|
      p 'Doing important work inheriting from active job in sidekiq'
      sleep 5
    end
  end
end