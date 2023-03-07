require 'yaml'

CONTENTS = ["Looking forward to attending!", "Can't wait to be there!", "Excited to join the event!",
            "I would be happy to participate!", "Count me in, I'm ready to go!"]


Attendance.delete_all
Run.delete_all
User.delete_all


# Load the YAML file
data = YAML.load_file("#{Rails.root}/db/seeds/data.yaml")

# Loop through the users and create each one
data['users'].each do |user_data|
  user = User.create!(
    username: user_data['username'],
    email: user_data['email'],
    password: user_data['password'],
    password_confirmation: user_data['password_confirmation'],
    first_name: user_data['first_name'],
    last_name: user_data['last_name']
  )

  # If the user has runs, create them too
  if user_data['runs']
    user_data['runs'].each do |run_data|
      # Find or create the run and add it to the runs array
      user.runs.create!(
        name: run_data['name'],
        description: run_data['description'],
        category: run_data['category'],
        level: run_data['level'],
        date: rand(Date.today..(Date.today + 7)),
        distance: run_data['distance'],
        max_person: run_data['max_person'],
        meeting_point: run_data['meeting_point'],
        circuit: run_data['circuit']
      )
    end
  else
    # If the user has no runs, find a random run and add them as an attendee
    run = Run.all.select { |r| r.attendances.count < 2 }.sample
    if run
      # Create an attendance instance for the user and the run
      Attendance.create!(user: user, run: run, status: rand(0..2), content: CONTENTS.sample)
    end
  end
end
