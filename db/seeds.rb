require 'yaml'

# Load the YAML file
data = YAML.load_file("#{Rails.root}/db/seeds/users.yaml")

# Loop through the users and create each one
data['users'].each do |user_data|
  user = User.create!(
    username: user_data['username'],
    password: user_data['password'],
    password_confirmation: user_data['password_confirmation'],
    first_name: user_data['first_name'],
    last_name: user_data['last_name']
  )

  # If the user has runs, create them too
  if user_data['runs']
    user_data['runs'].each do |run_data|
      user.runs.create!(
        name: run_data['name'],
        description: run_data['description'],
        category: run_data['category'],
        level: run_data['level'],
        distance: run_data['distance'],
        max_person: run_data['max_person'],
        meeting_point: run_data['meeting_point'],
        circuit: run_data['circuit']
      )
    end
  end
end
