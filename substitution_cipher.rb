module SubstitutionCipher
  module Caesar
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caesar cipher
      letters = [*'a'..'z']
      document.chars.select {|c| letters.include?(c.downcase)}.map {|c| (c.ord + key) >= 'z'.ord ? (c.ord + key - 26).chr : (c.ord + key).chr}.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caesar cipher
      letters = [*'a'..'z']
      document.chars.select {|c| letters.include?(c.downcase)}.map {|c| (c.ord - key) < 'a'.ord ? (c.ord - key + 26).chr : (c.ord - key).chr}.join
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using a permutation cipher
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using a permutation cipher
    end
  end
end
