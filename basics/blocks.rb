class Blocky


  def boilerplate(task_name, &block)
    puts "Boiling #{task_name}"
    start = Time.now
    block.call(start)
    sleep 1.2
    finish = Time.now
    puts "#{task_name} took: #{finish - start}s"
  end

end

blocky = Blocky.new

blocky.boilerplate(:task_1) do |start_time|
  puts "Starting a task at #{start_time}"
end

blocky.boilerplate(:task_2) do |start_time|
  puts "Starting another task at #{start_time}"
end
