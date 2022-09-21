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
}


def decode_char(char)
    print MORSE_DICT.key(char).upcase
end

decode_char ".-"
puts " "
def decode_word(word)
    words = word.split(' ')
    words.each{ |word| 
        decode_char(word)
    } 
end

decode_word"-- -.--"
puts " "

