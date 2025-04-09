
def caeser_cipher(string,shift)

  alphabet_downcase = ["a","b","c","d","e","f","g","h","i","j","k","l","m",
  "n","o","p","q","r","s","t","u","v","w","x","y","z"]

  alphabet_upcase = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
  "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

  array = string.split("")

  
  number_array = array.map do |letter|
    if alphabet_upcase.index(letter) == nil && alphabet_downcase.index(letter) == nil 
      letter = letter
    elsif letter.upcase == letter
      alphabet_upcase.index(letter)
    else
      alphabet_downcase.index(letter)
    end
  end

  shift_array = number_array.map do |number|
    if number.to_s != number.to_i.to_s
      number = number
    elsif number + shift >= 0 && number + shift <= 25
      number = number + shift
    elsif number + shift > 25
      number = (number + shift - 1) % 25
    elsif number + shift < 0
      number = 26 - ((number + shift)*-1)
    else
    end
  end


  cipher_array = shift_array.map do |number|
    if number.to_s != number.to_i.to_s
      number = number
    elsif array[shift_array.index(number)] == array[shift_array.index(number)].upcase
      number = alphabet_upcase[number]
    elsif array[shift_array.index(number)] != array[shift_array.index(number)].upcase
      number = alphabet_downcase[number]
    end
  end

  
  new_string = cipher_array.join
  p new_string
end

caeser_cipher("What a string!",5)

caeser_cipher("Bmfy f xywnsl!",21)

