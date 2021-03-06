# Print the contents of an array of sixteen number, four numbers
# at a time, using just "each".

puts "Using each:"

a = (1..16).to_a
c = 0
p = []

a.each do |i|
    c = c+1
    p.push(i)
    if c == 4 then 
        c = 0
        p.each { |j| print j, ' '}
        puts 
        p.clear
    end
end



# Now, do the same with each_slice in Enumerable.

puts "Using Enumerable and each_slice:"

(1..16).each_slice(4) do |s|
    s.each { |j| print j, ' '}
    puts
end
