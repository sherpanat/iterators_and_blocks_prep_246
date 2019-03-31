# array = ['nicolas', 'nathan', 'boris']
# for i in 0...array.length
#   puts array[i]
# end

# for name in array
#   puts "Listen to #{name}"
# end

# array.each do |name|
#   puts "congrats #{name}"
# end

# capitalized_array = []
# array.each do |name|
#   capitalized_array << name.capitalize
# end
# puts capitalized_array

# array_mapped = array.map do |name|
#   name.upcase
# end
# p array_mapped

# count = array.count do |name|
#   name.include?('n')
# end
# p count

# names_with_n = array.select do |name|
#   name.include?('n')
# end
# p names_with_n

# musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# upcased_first_names = musicians.map do |musician|
#   first_name = musician.split.first
#   upcased_first_name = first_name.upcase
#   puts "[DEBUG] #{musician}'s first name is #{upcased_first_name}"

#   upcased_first_name
# end

# p upcased_first_names

# def timer
#   puts '1'
#   start = Time.now
#   puts '2'
#   yield
#   puts '5'
#   stop = Time.now
#   return stop - start
# end

# duration = timer do
#   puts '3'
#   puts 'je fais un long traitement'
#   sleep(2)
#   puts "j'ai fini"
#   puts '4'
# end

# puts duration

# duration2 = timer do
#   puts 'je fais un autre long traitement'
#   sleep(1)
#   puts "j'ai fini aussi"
# end

# puts duration2

# def greeting
#   yield
# end

# bonjour = greeting('Jojo') do
#   'Bonjour # !'
# end

# hello = greeting do
#   'Hello Cloclo!'
# end

# p bonjour
# p hello

def greet(first_name, last_name)
  puts '1'
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  puts '2'
  yield(full_name)
  puts '5'
end

sentence = greet('john', 'lennon') do |name|
  puts '3'
  "Hello, #{name}"
  puts '4'
end

puts sentence

# sentence = greet('jonathan', 'serafini') do |name|
#   "Salut, #{name} le mafioso"
# end

# puts sentence