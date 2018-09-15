i = 1
while i < 50
  if i % 15 == 0
    p("FizzBuzz")
  elsif i % 5 == 0
    p("Buzz")
  elsif i % 3 == 0
    p("Fizz")
  else
    p(i)
  end
  i = i + 1
end