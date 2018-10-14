# Write your code here.


def word_substituter(tweet)
  newTweet= tweet.split(" ")
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
    "and" => "$"
  }
  
  newTweet.collect! do |ele|
    if code.has_key?(ele)
      ele = code[ele]
    else
      ele
    end 
  end 
    
    return newTweet.join(" ")
end 

