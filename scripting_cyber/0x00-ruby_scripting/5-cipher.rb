class CaesarCipher
 # initialize(shift): Constructor that initializes the shift value (shift) for encryption and decryption.
  
  def initialize(shift)
    @shift = shift
  end

  # encrypt(message): Method that takes a plaintext message (message) and returns the encrypted message using the Caesar cipher technique with the specified shift.
  
  def encrypt(message)
    cipher(message, @shift)
  end

  # decrypt(message): Method that takes a ciphertext message (message) and returns the decrypted message using the Caesar cipher technique with the specified shift.
  
  def decrypt(message)
    cipher(message, -@shift)
  end

  private

  # cipher(message, shift) : Method in a Caesar cipher implementation encrypts or decrypts a given message string based on the shift value provided 

  def cipher(message, shift)
    message.chars.map do |char|
      if char =~ /[A-Za-z]/
        base = char.ord < 91 ? 'A'.ord : 'a'.ord
        ((char.ord - base + shift) % 26 + base).chr
      else
        char
      end
    end.join
  end
end
