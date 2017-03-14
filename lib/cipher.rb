def caesar_cipher phrase, shift
  lower_case = ('a'..'z').to_a
  lower_case += lower_case
  upper_case = ('A'..'Z').to_a
  upper_case += upper_case

  translation = []

  letters = phrase.split('')

  letters.each do |letter|
    if lower_case.index(letter)
      position = lower_case.index(letter) + shift
      letter = lower_case[position]
    elsif upper_case.index(letter)
      position = upper_case.index(letter) + shift
      letter = upper_case[position]
    end

    translation.push(letter)
  end

  translation.join

end

print caesar_cipher("What a string!", 5)
print caesar_cipher("AeiOuP", 3)

# puts "What would you like to encode?"
# phrase = gets.chomp

# puts "Select an offset between 1 and 25"
# shift = gets.chomp.to_i

# puts "You're encoded message:"
# puts caesar_cipher(phrase, shift)
