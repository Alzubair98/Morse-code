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
  print MORSE_DICT.key(char).upcase
end

decode_char '.-'
puts ' '
def decode_word(word)
  words = word.split
  words.each do |n|
    decode_char(n)
  end
end

decode_word '-- -.--'
puts ' '

def decode(sentence)
  sentences = sentence.split('   ')
  sentences.each do |n|
    decode_word(n)
    print ' '
  end
end

decode '-- -.--   -. .- -- .'
puts ' '

decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
