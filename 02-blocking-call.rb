require 'rubygems'
require 'eventmachine'

EM.run do
  # nothing...
  count = 0

  EM.add_periodic_timer(1) do
    puts "i'm ping 1"
  end

  EM.add_periodic_timer(2) do
    count += 1
    puts "i'm ping 2 number #{count}"
    if count == 4
      puts "i'm going to sleep 10 seconds..."
      sleep 10
      puts "awake !!!"
    end
  end
end
