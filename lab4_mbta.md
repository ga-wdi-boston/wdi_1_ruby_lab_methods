## Lab 4: Poor Old Charlie

The following code is my solution to the MBTA homework (the stops are slightly different, since this is from an older version of the assignment). It works fine, but there is some duplication of logic that could be cleared up if we added a method or two. See if you can do just that.

```ruby
INTERSECTION = 'Park St'

lines = {
  red: ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall', 'Park St', 'South Station'],
  green: ['Haymarket', 'Govt Center', 'Park St', 'Boylston', 'Arlington', 'Copley'],
  orange: ['North Station', 'Haymarket', 'Park St', 'State', 'Downtown', 'Back Bay', 'Forest Hills']
}

puts "Which line are you getting on?"
start_line = gets.chomp.to_sym

puts "Which station are you getting on?"
start_station = gets.chomp

puts "Which line are you getting off?"
end_line = gets.chomp.to_sym

puts "Which station are you getting off?"
end_station = gets.chomp

start_index = lines[start_line].index(start_station)
intersection_index_on_start_line = lines[start_line].index(INTERSECTION)
start_distance = (start_index - intersection_index_on_start_line).abs

end_index = lines[end_line].index(end_station)
intersection_index_on_end_line = lines[end_line].index(INTERSECTION)
end_distance = (end_index - intersection_index_on_end_line).abs

total_distance = start_distance + end_distance

puts "The distance is: #{total_distance}"
```
