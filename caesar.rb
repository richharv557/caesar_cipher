def caesar_cipher(string,shift_factor)
  new_array = string.split("").map do |character|
    character = character.ord
    if character >= 97 && character <= 122
      new_ord = character + shift_factor
      new_ord -= 26 if new_ord > 122
      new_ord
    elsif character >= 65 && character <= 90
      new_ord = character + shift_factor
      new_ord -= 26 if new_ord > 90
      new_ord
    else
      character
    end
  end
  puts new_array.map { |item| item == nil ? ' ' : item.chr }.join
end

caesar_cipher("What a string!", 5)