def english_number(number)
  if number < 0
    puts "Positive numbers only at the moment please. Maybe in the future."
  end
  
  if number == 0
    puts "Zero"
  end
  
  eng_no = ""
  
  singlePlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine",]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tenPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  
  
  if number > 100
    hundreds = number / 100
    number = number - (hundreds * 100)
    eng_no = singlePlace[hundreds - 1] + " hundred"
    if
      number > 0
      eng_no = eng_no + " & "
    end
  end
  
  if (number == 10) or (number >= 20)
    tens = number / 10
    number = number - (tens * 10)
    eng_no = eng_no + tenPlace[tens - 1].to_s
    if number > 0
      eng_no = eng_no + "-"
    end
  end
  
  if (number > 10) && (number < 20)
    teens = number - 10
    number = number - (teens + 10)
    eng_no = eng_no + teenagers[teens - 1]
  end
    
  
  if number > 0
    eng_no = eng_no + singlePlace[number - 1].to_s
  end
  
  
  puts eng_no
end
  
puts "What number do you want to english-ify?"
number = gets.chomp.to_i

puts english_number(number)