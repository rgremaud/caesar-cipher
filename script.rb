# Convert all letters to a numeric value




# prompt the user to enter a string and shift value
def caeser_cipher(string,shift)

  alphabet_downcase = ["a","b","c","d","e","f","g","h","i","j","k","l","m",
  "n","o","p","q","r","s","t","u","v","w","x","y","z"]

  alphabet_upcase = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
  "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

  array = string.split("")

  p array

  number_array = array.map do |letter|
    if letter.upcase == letter
      alphabet_upcase.index(letter)
    else
      alphabet_downcase.index(letter)
    end
  end

  p number_array

  shift_array = number_array.map do |number|
    if number + shift >= 0 && number + shift <= 25
      number = number + shift
    elsif number + shift > 25
      number = (number + shift) % 25
    elsif number + shift < 0
      number = 25 - number
    else
    end
  end

  p shift_array

  # map shift_array to cipher_array
  cipher_array = shift_array.map do |number|
  # if index array == upcase
    if array[shift_array.index(number)] == array[shift_array.index(number)].upcase
      number = alphabet_upcase[number]
    elsif array[shift_array.index(number)] != array[shift_array.index(number)].upcase
      number = alphabet_downcase[number]
    end
  end
  p cipher_array
end

caeser_cipher("TEst",3)

caeser_cipher("WHvw",22)