#get it to return uppercase if uppercase
def caesar_cipher(string, x)
  ignored = (1..64)
  def string_ord(string)
    split_string = string.split("")
    string_to_int = split_string.map do |letter|
      letter = letter.ord
      letter 
    end
  end
  string_to_int = string_ord(string)
  #Subtracts the ord number from x
  string_to_ord = string_to_int.map do |ord|
    ignore = ignored.any? {|n| n == ord}
    if ignore == true
      ord
    else
      ord -= x
    end
    ord
  end
  #Keeps within a-z range
  string_to_ord.each_with_index do |ord, index|
    ignore = ignored.any? {|n| n == ord}
    if ignore == true
      ord
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
    letter = letter.chr
    letter
  end
  #joins letters back together
  letters_joined = ord_to_letters.join
  #returns output
  puts letters_joined
end

caesar_cipher("Abc defg!!!", 1)
#abcdefghijklmnopqrstuzwxyz