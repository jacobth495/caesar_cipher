def caesar_cipher(string, x)
  #Range of ASCII puncuations to ignore
  ignored = (1..64)
  #Method to return ASCII letter codes from string
  def string_ord(string)
    split_string = string.split("")
    string_to_int = split_string.map do |letter|
      letter = letter.ord
      letter 
    end
  end
  #String converted to ASCII code
  #Checks for punctuation and subtracts the value of x
  string_to_int = string_ord(string)
  string_to_ord = string_to_int.map do |ord|
    ignore = ignored.any? {|n| n == ord}
    if ignore == true
      ord
    else
      ord -= x
    end
    ord
  end
  #Keeps within A-Z & a-z range
  string_to_ord.each_with_index do |ord, index|
    ignore = ignored.any? {|n| n == (ord + x)}
    if ignore == true
      ord
    elsif ord < 97
      if ord < 65
        ord = 64 - ord
        ord = 90 - ord
        ord
      elsif ord < (97 - x)
        ord
      else
        ord = 96 - ord
        ord = 122 - ord
        ord
      end
    end
    string_to_ord[index] = ord
  end
  #Converts ASCII codes back into letters
  ord_to_letters = string_to_ord.map do |letter|
    letter = letter.chr
    letter
  end
  #joins letters back together
  letters_joined = ord_to_letters.join
  #returns output
  puts letters_joined
end

caesar_cipher("What the Dog DoinG!!", 1)
#abcdefghijklmnopqrstuzwxyz