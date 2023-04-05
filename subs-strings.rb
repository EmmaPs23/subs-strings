def substrings(word, dictionary)
    result = Hash.new(0)
    
    word = word.downcase

    dictionary.each do |str|
        str = str.downcase
        scanner = word.scan(str)
        counter = scanner.count
        
        result[scanner.first] = counter
    end
    p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)