# Solitaire Cipher
# The Solitaire gets its security from the inherent randomness in a shuffled deck of cards.
# By manipulating this deck, a communicant can create a string of "random" letters that he then combines with his message.
# Of course Solitaire can be simulated on a computer, but it is designed to be implemented by hand.
#
# Examples
#   ## Encrypting ##
#   # Returns an array with the encrpyted message AND the generated keystream
#   >> SolitaireCipher.encrypt('Code in Ruby, live longer!')
#   => ['GLNCQ MJAFF FVOMB JIYCB', 'DWJXH YRFDG TMSHP UURXJ']
#
#   ## Decrypting ##
#   # Returns the decrypted message in a 5 letter block format
#   >> SolitaireCipher.decrypt('GLNCQ MJAFF FVOMB JIYCB', 'DWJXH YRFDG TMSHP UURXJ')
#   => 'CODEI NRUBY LIVEL ONGER'

ALPHABET = ('a'..'z').to_a

class SolitaireCipher

  def self.encrypt(message)
    message.keep_only!(/[^a-zA-Z]/).upcase!

    unless message.length % 5 == 0
      (5 - (message.length % 5)).times { message << 'X' }
    end

    # [message, keystream]
  end

  def self.decrypt(encrypted_message, keystream)
    # Decrypt me!
  end

  private

  def map_alphabet_positions(string)
    string.split('').map do |letter|
      ALPHABET.find_index(letter) + 1
    end
  end

  def get_keystream
  end
end

class String
  def keep_only!(regex)
    self.gsub!(regex, '')
    self
  end

  def split_into_groups_with!(section_length, separator)
    self.gsub!(/.{#{section_length}}(?=.)/, "\\0#{separator}")
  end
end
