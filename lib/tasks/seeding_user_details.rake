namespace :seeding_user_details do
  desc "Seeding User Details Model Through Task"
  task seed_user_details: :environment do
    UserDetail.create!([{user_id: '1', address: 'Address User-1 Submitted Via Seed', gender: 'Male'},
                        {user_id: '2', address: 'Address User-2 Submitted Via Seed', gender: 'Female'},
                        {user_id: '3', address: 'Address User-3 Submitted Via Seed', gender: 'Male'},
                        ])
  end

end
