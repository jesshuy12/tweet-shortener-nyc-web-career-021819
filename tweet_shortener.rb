def dictionary
  words_to_be_sub = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  shortened = []                        #creates new array
  keys = dictionary.keys                #setting all keys within dictionary to variable keys
  tweet_words = tweet.split(" ")        #dividing all strings in tweet to substrings
  
    tweet_words.each do |word|            #iterating over tweet_words
      if keys.include?(word.downcase)     #check to see if values in word present in keys
      shortened << dictionary[word.downcase]      #if it is, places all those in "shortned" array
    else
    shortened << word                                #non lowercase words
  end
end
  shortened.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |word|               #iterates over tweets
    puts word_substituter(word)       #uses word_substituter method with arg "word" value
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length <= 140                   #if length in number value less than 140
    return tweets                           #returns tweets
  else
    return word_substituter(tweets)         #if not, uses word_substituter with tweet arg
  end
end

def shortened_tweet_truncator(tweets)
  shortened_tweet = selective_tweet_shortener(tweets)      #uses selective_tweet_shortener
  if shortened_tweet.length > 140                      #if number length is less than 140
    return shortened_tweet[0..136] += "..."             #return tweet from 0 thru 136 index
  else                                                      #and have "..." at the end
    return shortened_tweet        
  end
end
    





