#write your code here
def add i, j
  result = i+j
end

def subtract i, j
 result = i-j
end

def sum input
  i=input.length
  result = 0
  loop do
    if i == 0
      break
    end
    result = result+input[i-1]
    i-=1
  end
  return result
end

def multiply input
  i=input.length
  result = 1
  loop do
    if i == 0
      break
    end
    result = result*input[i-1]
    i-=1
  end
  return result
end

def power i, j
 result = i**j
end

def factorial i
  result = 1
  loop do
    if i <= 1
      break
    end
    result = result*i
    i-=1
  end
  return result
end
