namespace :printer do
  desc "Execute"
  task run: :environment do
    if system("rake test:all") == false
      puts "The tests fail."
    else
      puts "The tests passed."
    end
  end
end
