ActiveSupport::Notifications.subscribe(/\.insights$/) do |*args|
  event = ActiveSupport::Notifications::Event.new(*args)
  Honeybadger.event("activity", event.payload.compact)
end