module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    checksum = nums_a.pop
    odd_sum = 0             
    even_sum = 0            
    nums_a.each_slice(2) do |odd,even|                                    
      even *= 2             
      even = even.divmod(10).inject(:+) if even > 9                                               
      even_sum += even                  
      odd_sum += odd                
    end
    sum = even_sum + odd_sum
    checksum == 10 - (sum % 10)  
    # TODO: use the integers in nums_a to validate its last check digit
  end
end
