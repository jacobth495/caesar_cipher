#get it to ignore spaces
#get it to ignore punctuation

def caesar_cipher(string, x)
  string_to_lower = string.downcase
  split_string = string_to_lower.split("")
  string_to_int = split_string.map do |letter|
    letter = letter.ord
    letter
  end
  string_to_ord = string_to_int.map do |ord|
    ord = (ord - x)
    ord
  end
  string_to_ord.each_with_index do |ord, index|
    if ord < 97
      ord = 97 - ord
      ord = 122 - ord
      ord
    end
    string_to_ord[index] = ord
  end
  ord_to_letters = string_to_ord.map do |letter|
    letter = letter.chr
    letter
  end
  letters_joined = ord_to_letters.join('')
  puts letters_joined.capitalize
end

caesar_cipher("What hi", 5)
#abcdefghijklmnopqrstuzwxyz