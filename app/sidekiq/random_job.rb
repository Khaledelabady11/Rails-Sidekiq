class RandomJob
  include Sidekiq::Job

  def perform(*args)
    user = User.new
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.save!
    sleep 8
  end
  
end
