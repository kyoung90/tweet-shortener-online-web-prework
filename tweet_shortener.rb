# Write your code here.
def dictionary(str)
  code = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
  if code.has_key?(str)
    return code[str]
  elsif code.has_key?(str.capitalize)
    return code[str].capitalize
  else
    return str
  end 
end 

def word_substituter(tweet)
  newTweet= tweet.split(" ")
  
  newTweet.collect! do |ele|
    ele = dictionary(ele)
  end 
    
    return newTweet.join(" ")
end 

def bulk_tweet_shortener(tweetArray)
  tweetArray.each do |ele|
    puts word_substituter(ele)
  end 
end 