def substrings(word,array)
  word = word.downcase
  wordArray = word.split(" ") 

  array.reduce(Hash.new(0)) do |resultHash, currSubstring|
    wordArray.each do |currWord|
      if(currWord.include?(currSubstring))
        resultHash[currSubstring] +=1
      end
    end
    resultHash
  end

end


