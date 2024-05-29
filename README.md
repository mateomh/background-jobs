# README


## Run the app
- docker compose -f dev.docker-compose.yml up -d
- docker compose -f dev.docker-compose.yml down
- docker attach <container_id>
- docker exec -t -i b9c51852d739 bash
- docker exec -t -i b9c51852d739 sh

## Run the jobs
### Sidekiq
- SidekiqJob1.perform_async
- SidekiqJob1.perform_in(5.minutes)
- SidekiqJob1.perform_at(10.minutes.from_now)
- SidekiqJob2.perform_later

### Delayed Job
- DelayedJob1.new.do_something1
- DelayedJob1.new.delay.do_something2
- Delayed::Job.enqueue DelayedJob2.new