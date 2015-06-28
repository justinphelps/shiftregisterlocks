#!/usr/bin/ruby
#20150626 Justin Phelps
#Generates every combination sequence for a shift register based lock
#This one transposes base 5 numbers to base 10 odds for specific car door types
#https://twitter.com/J0hnnyXm4s/status/613947889199501312/photo/1
MAX = Integer 3124 #(5^5)-1
(all_iterations ||= []) << "99999"
(0..MAX).each do |x|
  y = x.to_s(5)
    y.tr!('4','9')
    y.tr!('3','7')
    y.tr!('2','5')
    y.tr!('1','3')
    y.tr!('0','1')
    all_iterations << y.rjust(5,'1')
end
final_string = all_iterations.uniq.join + "99999"
puts final_string
