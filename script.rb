#get it to ignore spaces
#get it to ignore punctuation

def caesar_cipher(string, x)
  #converts to lowercase
  string_to_lower = string.downcase
  #splits into individual letters
  split_string = string_to_lower.split("")
  #Loops through each letter converts to ord number unless empty space
  string_to_int = split_string.map do |letter|
    if letter == ' '
      next
    else
      letter = letter.ord
      letter 
    end
  end
  #Subtracts the ord number from x unless nil
  string_to_ord = string_to_int.map do |ord|
    if ord == nil
      next
    else
    ord = (ord - x)
    ord
    end
  end
  #Keeps within a-z range
  string_to_ord.each_with_index do |ord, index|
    if ord == nil
      next
    elsif ord < 97
      ord = 96 - ord
      ord = 122 - ord
      ord
    end
    string_to_ord[index] = ord
  end
  #Converts ord numbers back into letters
  ord_to_letters = string_to_ord.map do |letter|
    if letter == nil
      next
    end
    letter = letter.chr
    letter
  end
  #joins letters back together
  letters_joined = ord_to_letters.join(nil)
  #returns output
  puts letters_joined
end

caesar_cipher("abc defg", 1)
#abcdefghijklmnopqrstuzwxyz