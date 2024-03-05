ActiveSupport::Notifications.subscribe(/\.active_job$/) do |*args|
  event = ActiveSupport::Notifications::Event.new(*args)
  Honeybadger.event("active_support", event.payload.compact.merge(event_name: event.name))
end
