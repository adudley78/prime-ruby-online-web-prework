#require 'prime' # tried playing around with prime and couldn't get it to return false and include -1, etc

#def prime?(integer)
#  (2..integer/2).none?{|i| integer % i == 0}
#end

def prime?(integer)
  return false if integer < 2 # retunrs false b/c any number less than 2 cannot be a prime number
  return true if integer == 3 || integer == 2 # returns true b/c 3 and 2 are the lowest numbers that can be prime
    if (2...integer-1).any?{|i| integer % i == 0}
      false
    else
      true
    end
end
