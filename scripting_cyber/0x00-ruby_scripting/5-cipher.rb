#!/usr/bin/env ruby

class CaesarCipher
  def initialize(shift)
    @shift = shift % 26
  end

  def encrypt(message)
    cipher(message, @shift)
  end

  def decrypt(message)
    cipher(message, -@shift)
  end

  def cipher(message, shift)
    result = ""
    message.each_char do |char|
      if char.match(/[A-Za-z]/)
        base = char.ord < 91 ? 'A'.ord : 'a'.ord
        new_char = ((char.ord - base + shift) % 26 + base).chr
        result << new_char
      else
        result << char
      end
    end
    return result
  end
end
