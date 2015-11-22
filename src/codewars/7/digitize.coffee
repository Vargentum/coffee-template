digitize = (n) ->
  res = (item for item in "" + n)

# console.log digitize 12345




###
Write a function insertDash(num) that will insert dashes ('-')
between each two odd numbers in num.
###
insertDash = (num) ->
  isOdd = (s) ->
    unless parseFloat(s) % 2 is 0 then on else off
  
  num.map (n, i) ->
    if isOdd n and isOdd n[i+1] then "#{n}-" else n


console.log insertDash 246943
  
  

