def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  new_array = []
  for i in attendees do
    new_array.push(badge_maker(i))
  end
  return new_array
end

def assign_rooms(attendees)
  attendees.each_with_index.map {|attendee,index| "Hello, #{attendee}! You'll be assigned to room #{index+1}!"}
end

def printer(attendees)
  batch_badge_creator(attendees).each do |name|
    puts assign_rooms(attendees)
  end
end
