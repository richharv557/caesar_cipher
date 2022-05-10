def caesar_cipher(string,shift_factor)
  new_array = string.split("").map do |character|
    character = character.ord
    if character >= 97 && character <= 122
      new_ord = character + shift_factor
      if new_ord > 122
        new_ord -= 26
      end
      new_ord
    elsif character >= 65 && character <= 90
      new_ord = character + shift_factor
      if new_ord > 90
        new_ord -= 26
      end
      new_ord
    else
      character
    end
  end
  new_array.map { |item| item == nil ? ' ' : item.chr }.join
end

p caesar_cipher("What a string!", 5)