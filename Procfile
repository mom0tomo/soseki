web: bundle exec puma -C config/puma.rb
worker: COUNT=4 QUEUES=default,mailers,house_for_sale_magazine,* bundle exec rake environment resque:workers
scheduler: bundle exec rake environment resque:scheduler
release: rake db:migrate
