namespace :seeding_blogs do
  desc "Seeding Blogs Model Through Task"
  task seed_blogs: :environment do
    Blog.create!([{title: '1 - Title Submitted Via Seed And Task', description: 'Description Submitted Via Seed', user_id: '1'},
                   {title: '2 - Title Submitted Via Seed And Task', description: 'Description Submitted Via Seed', user_id: '3'},
                   {title: '3 - Title Submitted Via Seed And Task', description: 'Description Submitted Via Seed', user_id: '4'}
                  ])
  end

end
