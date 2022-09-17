def wrapping_caesar_cipher(string, key)
  
    if (key > 26) 
      key = key % 26
    end
  
    split_text = string.chars
    #take each individual character and modify it with the key depending on position in ASCII
    cipher_text = split_text.map.each do |character|
      #uppercase operation
     if character >= "A" && character <= "Z"  
      uppercase_num = character.ord
      #p uppercase_num
      wrapped_up_char = (((uppercase_num - 65) + key) % 26 + 65).chr
     # p wrapped_up_char
      #lowercase operation
     elsif character >= "a" && character <= "z"
      lowercase_num = character.ord
      #p lowercase_num
      wrapped_low_char = (((lowercase_num - 97) + key) % 26 + 97).chr
      #p wrapped_low_char
      #not lowercase letter & not uppercase letter
     else 
      character
     end
  end
     #join the ciphered individual characters back together
     joined_text = cipher_text.join
     p joined_text
  end
  wrapping_caesar_cipher("Hello, World!", 0)
  wrapping_caesar_cipher("Hello, World!", 1)
  wrapping_caesar_cipher("Hello, World!", 15)