DelayedJob2 = Struct.new(:arg1, :arg2) do
  def perform
    (1..5).each do |i|
      p 'Doing stuff with a struct Delayed Job'
    end
  end

  def queue_name
    'custom_queue_dj2'
  end

  def destroy_failed_jobs?
    true
  end

  def reschedule_at(current_time, attempts)
    current_time + 30.seconds
  end
end