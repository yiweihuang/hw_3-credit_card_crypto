module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    sum = 0
    nums_a.reverse.each_slice(2) do |odd,even|
      sum += odd
      next unless even
      even *= 2
      even = even.divmod(10).inject(:+) if even > 9
      sum += even
    end
    (sum % 10) == 0

    # TODO: use the integers in nums_a to validate its last check digit
  end
end
