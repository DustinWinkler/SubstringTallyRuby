
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(word, dictionary)
  output = {}
  word.downcase!
  dictionary.each do |check|
    matches = word.scan(/#{check.downcase}/).length
    
    if matches > 0 
      output[check.to_sym] = matches
    end
  
  end

  return output

end
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

