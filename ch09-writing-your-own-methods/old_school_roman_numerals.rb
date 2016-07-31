def old_roman_numeral num
  roman = ''

  roman = roman + 'M' * (num        / 1000)
  roman = roman + 'D' * (num % 1000 /  500)
  roman = roman + 'C' * (num % 1000 /  100)
  roman = roman + 'L' * (num % 1000 /   50)
  roman = roman + 'X' * (num % 1000 /   10)
  roman = roman + 'V' * (num % 1000 /    5)
  roman = roman + 'I' * (num % 1000 /    1)
  roman
  end
  puts (roman_numeral (5))