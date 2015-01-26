namespace :printer do
  desc "Execute"
  task run: :environment do
    if system("rake test:all") == false
      puts "The tests fail."
    else
      puts "The tests passed."
      puts "Pushing to GitHub."
      system("git push origin master")
      puts "Done."
    end
  end
end
