def decode_char(input)
  mores_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  return mores_char[input] if mores_char[input]

  nil
end

def decode_word(input)
  decoded_string = ''
  input.split
    .each do |word|
    decoded_string += decode_char(word) if decode_char(word)
  end
  decoded_string
end

def decode(message)
  decoded_message = ''
  message.split('   ')
    .each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message
end
