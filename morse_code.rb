MORSE_DICT = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..'
}.freeze

def decode_char(char)
  MORSE_DICT.key(char).upcase
end

def decode_word(word)
  decoded = ''
  words = word.split
  words.each do |n|
    decoded += decode_char(n)
  end
  decoded
end

def decode(sentence)
  message = ''
  sentences = sentence.split('   ')
  sentences.each do |n|
    message += "#{decode_word(n)} "
  end
  message.strip
end

p decode_char '.-'
p decode_word '-- -.--'
p decode '-- -.--   -. .- -- .'
p decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
