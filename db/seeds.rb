User .destroy_all
TrainingSession.destroy_all

user1 = User.create(email: 'alice@example.com', password: '123123')
user2 = User.create(email: 'bob@example.com', password: '123123')
user3 = User.create(email: 'charlie@example.com', password: '123123')

training1 = TrainingSession.create(date: '2023-10-01', activity: 'Yoga', duration: 60, description: 'Yoga session for relaxation', user: user1)
training2 = TrainingSession.create(date: '2023-10-02', activity: 'Running', duration: 30, description: 'Morning run in the park', user: user1)
training3 = TrainingSession.create(date: '2023-10-03', activity: 'Cycling', duration: 45, description: 'Cycling around the city', user: user2)
training4 = TrainingSession.create(date: '2023-10-04', activity: 'Swimming', duration: 30, description: 'Swimming at the local pool', user: user2)
training5 = TrainingSession.create(date: '2023-10-05', activity: 'Weightlifting', duration: 60, description: 'Strength training session', user: user3)
training6 = TrainingSession.create(date: '2023-10-06', activity: 'Pilates', duration: 50, description: 'Pilates class for core strength', user: user3)

puts "Created #{User .count} users and #{TrainingSession.count} training sessions."