# Convert all letters to a numeric value
alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m",
            "n","o","p","q","r","s","t","u","v","w","x","y","z"]
# prompt the user to enter a string and shift value
def caeser_cipher(string,shift)
# convert string to an array of single letters/spaces
  array = string.split("")
  index_value = alphabet.index(array[0])
# Iterate over the string array to find the index value in the alphabet array
# Take the shift amount and add it to the index value to find the new value
# Three Scenarios:
# 1) index_value + shift is >= 0 and <= 26.  Take value and find new value
# 2) index_value + shift is > 26.  Loop back around by calculating the remainder of 
#    index_value + shift % 26
# 3) index_value + shift is < 0.  Loop around so shift_value = 26 - (index_value+shift*-1)
# apply the shift to the numerical values
# convert back to string
# return new string
end