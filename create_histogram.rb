#this is a simple histogram that takes user input and counts the number of times each word is used. it then outputs each key/value pair in reverse numerical order.
puts "Please tell me what you want to say"
text = gets.chomp

words = text.split(" ") #create an array by splitting string
frequencies = Hash.new(0) #create new hash with default value zero
words.each {|count| frequencies[count] +=1} #iterate over each word in array and add each word to the frequencies hash one at a time
frequencies = frequencies.sort_by {|word, count| count} #sorts the frequencies hash by word count then stores the result back in the frequencies hash
frequencies = frequencies.reverse! #reverses numerical order of the hash values from largest to smallest
frequencies.each {|word, count| puts "#{word} #{count}"} 
#iterates over each key/value pair in hash and prints them out as strings separated by a space