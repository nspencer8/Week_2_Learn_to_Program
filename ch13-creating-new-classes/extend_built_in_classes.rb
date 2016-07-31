class Array
  def shuffle 
    arr = self
    shuf = []
    while arr.length > 0
      rand_index = rand(arr.length)

      curr_index = 0
      new_arr = []

      arr.each do |item|
        if curr_index == rand_index
          shuf.push item
        else
          new_arr.push item
        end
        curr_index = curr_index + 1
        end
      arr = new_arr
      end
      shuf
    end
  end

def Integer
def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  def to_roman
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
end


puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman

