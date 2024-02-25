class WalkReminderJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Dog.where('last_walked < ?', 8.hours.ago).find_each do |dog|
      puts "Reminder! It's time to walk: #{dog.name}"
    end
  end
end
