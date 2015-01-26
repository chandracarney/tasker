namespace :deploy do
  desc "Deploys app to github and production."
  task all: :environment do
    if system("rake test:all") == false
      puts "The tests fail."
      break
    end

    puts "The tests passed."

    if system("git push origin master") == false
      puts "Couldn't push to github."
      break
    end
    puts "Done."

    # puts "Pushing to heroku"
    # if system("git push heroku master") == false
    #   puts "Couldn't push to heroku."
    #   break
    # end
    # puts "Done"
    end
  end
end
