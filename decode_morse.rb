def decode_char(char)
  morse_code = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
                 '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
                 '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
                 '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                 '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  morse_code.each do |key, value|
    return value if key == char
  end
end

def decode_word(word)
  str = ''
  full_word = ''
  word.split.each do |char|
    str = if char == '/'
            ' '
          else
            decode_char(char)
          end
    full_word += str
  end
  full_word
end

def decode(morse_message)
  words = ''
  morse_message.split('  ').each do |word|
    words += "#{decode_word(word)} "
  end
  words
end

puts decode_char('.-')
puts decode_word('--- ..-. /')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
