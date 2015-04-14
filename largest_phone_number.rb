def largest_phone_num nums
	index = 0
	sums = {}
  nums.each do |i|
	  i = i.split("-").join
	  sum = 0
	  i.each_char do |j|
	  	sum += j.to_i
    end
    sums[sum] = index
    index += 1
  end
  max_key = sums.keys.max
  nums[sums[max_key]]
end

nums1 = (['123-456-7777', '963-481-7945', '111-222-3333'])
nums2 = (['555-555-5555','111-111-1111','555-555-5456','222-121-2121'])
nums3 = (['123-456-7899', '132-456-7899'])

largest_phone_num nums1
largest_phone_num nums2
largest_phone_num nums3




# PROCESS:

# I tried to write it solely using your resources here.

# used .each to visit each phone number and remove the dash.

# used .join to join them together because split separates the numbers where the dash was.

# I use puts to test everything, to see what it is up to.

# error for .each called on i: undefined method `each' for :String (NoMethodError). Googled it and saw on stackoverflow that Ruby won't let you call
#   .each on a string class anymore. So I decided to use .each_char and when adding them together I made the string into an intager using .to_i. Now
#   I get the sums.

# I made a hash to hold the sums so I can give them a value that will be their index. So the index is not lost when I seach for the highest sum that
# way I compare the phone number's index to the hash's value I can match them.

# So I made a varible to keep count of the current index and called it index. I set it equal to 0 and I assign the index to the current sum being 
# added to the hash, then I add 1 to the index after each sum is added to the hash to give it it's value/index and this makes sure the first value/
# index is also 0.

# I made a variable called max_key that finds and stores the highest sum in the sums hash.

# I return and access the highest summed phone number in the nums array by index using the value of the max_key of the sums hash.




# EXAMPLES I PICKED UP FROM TRYRUBY AND CODECADEMY:

# puts "Text please: "
# text = gets.chomp
# words = text.split(" ")
# frequencies = Hash.new(0)
# words.each { |word| frequencies[word] += 1 }
# frequencies = frequencies.sort_by {|a, b| b }
# frequencies.reverse!
# frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
#   In Console
# Text please: 
#  hello there there hi
# #[["hi", 1], ["there", 2], ["hello", 1]] 

# next if "some char"
# books.values.each { |rate| ratings[rate] += 1 }

# hashes, next if, multidimentional arrays, accessing keys in hashes hash[key], adding to hash[key] = value
# you could have put the values in a subarray after splitting them
# .length, .reverse, .max, accessing and changing hash were shown many times