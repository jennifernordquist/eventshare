desc "These tasks are called by Heroku Scheduler"

task :email_blast => :environment do
  puts "Running email blast job..."
  EmailBlast.run
  puts "done."
end

task :text_blast => :environment do
  puts "Running text blast job..."
  TextBlast.run
  puts "done."
end
