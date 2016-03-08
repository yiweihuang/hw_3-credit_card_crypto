require_relative './luhn_validator.rb'
require 'json'

class CreditCard
  # TODO: mixin the LuhnValidator using an 'include' statement
  include LuhnValidator
  # instance variables with automatic getter/setter methods
  attr_accessor :number, :expiration_date, :owner, :credit_network

  def initialize(number, expiration_date, owner, credit_network)
    # TODO: initialize the instance variables listed above (do not forget the '@')
    @number = number
  end

  # returns json string
  def to_json
    {
      # TODO: setup the hash with all instance vairables to serialize into json
     }.to_json
  end

  # returns all card information as single string
  def to_s
    self.to_json
  end

  # return a new CreditCard object given a serialized (JSON) representation
  def self.from_s(card_s)
    # TODO: deserializing a CreditCard object
  end

  # return a hash of the serialized credit card object
  def hash
    # TODO: Produce a hash (using default hash method) of the credit card's
    #       serialized contents.
    #       Credit cards with identical information should produce the same hash.
  end

  # return a cryptographically secure hash
  def hash_secure
    # TODO: Use sha256 from openssl to create a cryptographically secure hash.
    #       Credit cards with identical information should produce the same hash.
  end
end
