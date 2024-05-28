class DelayedJob1
  def do_something1
    (1..5).each do |i|
      p 'Doing stuff in Do Something 1'
    end
  end
  handle_asynchronously :do_something1, queue: 'custom_queue_dj1'

  def do_something2
    (1..5).each do |i|
      p 'Doing stuff in Do Something 2'
    end
  end
end