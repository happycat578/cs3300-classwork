# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if  arr.empty?
    return 0
  elsif arr.length()==1
    return arr[0]
  else 
    return arr.sort[-1]+arr.sort[-2]

  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  if  arr.length()==1
    return false
  end
  for x in 0..arr.length()-1
    
    if x != arr.length()-1
      for y in x..arr.length()-1
        if (arr[x]+arr[y])==n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
 String.new("Hello, #{name}") 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.match?(/^[^aeiou\d\W]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length()!=0
    if !s.match(/[^01]/)
      if s.to_i % 4 ==0
        return true
      end
    end
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  isbn="filler"
  price=0
  def initialize(isbn,price)
    if price<=0 
      raise ArgumentError.new("Price should be more then 0")
    end
    if isbn.length==0 
      raise ArgumentError.new("Length sould be longer then zero isbn")
    end
    @isbn=isbn
    @price=price
  end
  def price
    @price
  end
  def isbn
    @isbn
  end
  def price=(price)
    @price = price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price_as_string
    String.new("$%.2f" % @price) 
  end


end
