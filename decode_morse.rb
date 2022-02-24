def decode_char(char) 
    morse_code = {".-" => "A", "-..." => "B", "-.-." => "C",  "-.." => "D",  "." => "E",  "..-." => "F",
    "--." =>"G" , "...." => "H", ".." => "I",  ".---" => "J", "-.-" => "K", ".-.." => "L", "--" => "M",
    "-." => "N",  "---" => "O", ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
    "..-" => "U", "...-" => "V", ".--" =>  "W", "-..-" =>  "X", "-.--" => "Y", "--.." => "Z"
    }
    morse_code.each do |key, value|
       return value if key === char
    end
 end
 
 def decode_word(word)
    str = ''
    word.split.each do |char|
       if char == "/"
          str += " "
       else
          str += decode_char(char)
       end
    end
    str
 end
 