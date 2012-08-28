# Remember, the "All" group is created automatically!
user = User.create!(email: "jordan@eventsha.re", password: "apassword", first_name: "Jordan", last_name: "Goldstein", phone: "4436246595")
event = user.events.create!(name: "Cupcake Social", desc: "A social cupake gathering!", start_time: Time.now + 1.day, end_time: Time.now + 1.day + 1.hour, host: "Ugrad Comp Sci")
event.setting = Setting.create!(require_email: true, require_phone: true, require_rsvp: true, require_name: true)
event.recipients.create!(email: "mrjordangoldstein+seeddata@gmail.com", phone: "(123) 456 7890", rsvp: "yes", name: "Jordan Goldstein")
event.venue = Venue.create!(street: "123 Example Drive", city: "Foo", state: "Bar", zip: 20657, location: "Main Office on 2nd Floor")
event.groups.first.email_blasts.create!(done: false, contents: "Come to the cupcake social!", schedule: Time.now + 1.hour).group = event.groups.first
event.groups.first.text_blasts.create!(done: false, contents: "Come to the cupcake social!", schedule: Time.now + 1.hour).group = event.groups.first
