def encrypt(sentence, crypto_code = -3)
  # Define an array with the 26 letters of alphabet in capital letters
  # Séparer la phrase en mot
  # Séparer les mots en lettres
  # Pour chaque lettre
  # s'il est dans l'alphabet, trouver sa place
  # sinon ne rien faire
  # allez chercher sa place -3 dans l'alphabet
  # Reconstituer la phrase

  # alphabet = ('A'..'Z').to_a
  # letters = sentence.split('')
  # encrypt_letters = letters.map do |letter|
  #   if alphabet.include?(letter)
  #     index = 0
  #     alphabet.each_with_index do |alphabet_letter, i|
  #       index = i if (letter == alphabet_letter)
  #     end
  #     alphabet[index - 3]
  #   else
  #     letter
  #   end
  # end
  # encrypt_letters.join

  alphabet = ('A'..'Z').to_a
  sentence.split('').map do |letter|
    if alphabet.include?(letter)
      new_index = alphabet.index(letter) + crypto_code
      alphabet[new_index % 26]
    else
      letter
    end
  end.join
end


# text.upcase.split("").map do |letter|
#     index = alphabet.index(letter)
#     index.nil? ? letter : alphabet[index - 3]
#   end.join