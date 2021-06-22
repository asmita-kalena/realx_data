task default: [:tests, :execute]

namespace :rover do
  desc 'Run unit tests'
  task :tests do
    sh 'gem install rspec'
    sh 'rspec spec/ -fd'
  end

  desc "Executes the program to get the rover's final co-ordinates and heading"
  task :execute do
    sh 'ruby src/rover_movement.rb input.in'
  end
end
