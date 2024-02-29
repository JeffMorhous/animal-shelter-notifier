class WalkReminderJob < ApplicationJob
  queue_as :default

  def perform(dog)
    ActiveSupport::Notifications.instrument "walk_reminder_evaluated.insights", dog_name: dog.name

    if dog.last_walked_date < 8.hours.ago
      puts "Reminder! Time to walk: #{dog.name}"
      ActiveSupport::Notifications.instrument "walk_reminder_triggered.insights", dog_name: dog.name
      # Here you could also send an email or notification
    end
  end
end
