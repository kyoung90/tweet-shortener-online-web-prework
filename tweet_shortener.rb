# Write your code here.
def dictionary(str)
  str.split(" ")
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
  
  str.collect do |ele|
    if code.has_key?(ele)
      ele = code[ele]
    else
      ele
    end 
  end 
    
    return str.join(" ")
end 