# Methods

```
def excited_greeting(first_name, last_name)
  greeting = "Hi, #{first_name} #{last_name} here!"
  greeting = greeting.upcase
  return greeting
end
```

* Explain all the "parts of speech"
* Remove "return", still works
* Move "return" earlier, see what happens
* Pare it down to be more Rubyish

```
def excited_greeting(first_name, last_name)
  "Hi, #{first_name} #{last_name} here!".upcase
end
```

## Scope

```
product = 'WDI'

def excited_greeting(first_name, last_name)
  "Hi, #{first_name} #{last_name} here for #{product}!".upcase
end

puts excited_greeting('Alex', 'Grant') # age is not defined!
puts "My first name is #{first_name}" # first_name is not defined!
```

* Explain call stack here when error occurs

```
first_name = 'David'

def excited_greeting(first_name, last_name)
  "Hi, #{first_name} #{last_name} here!".upcase
end

puts excited_greeting('Alex', 'Fisher')
puts "My first name is #{first_name}"
```

* Do toonify and prime labs here

## Default and Keyword Arguments

```
def excited_greeting(first_name, last_name, product = 'WDI')
  "Hi, #{first_name} #{last_name} here for #{product}!".upcase
end
```

* We can have more than one default argument
* Multiple defaults tends to get confusing and isn't used as much

```
def greeting(first_name, last_name, product = 'WDI', excited = true)
  greeting = "Hi, #{first_name} #{last_name} here for #{product}!"
  excited ? greeting.upcase : greeting
end
```

* What if we want to not be excited, but keep the default product?
* Same problem occurs if we switch the order around

```
def greeting(first_name, last_name, product: 'WDI', excited: true)
  greeting = "Hi, #{first_name} #{last_name} here for #{product}!"
  excited ? greeting.upcase : greeting
end
```

* Keyword arguments are new to Ruby 2.0
* Highly recommend this approach for methods that take two or more arguments
* In earlier versions we'd have to use hashes and a bunch of boilerplate

```
def greeting(first_name, last_name, options = {})
  product = options.key?(:product) ? options.delete(:product) : 'WDI'
  excited = options.key?(:excited) ? options.delete(:excited) : true
  raise ArgumentError, "unknown keyword: #{options.keys.first}" if !options.empty?

  greeting = "Hi, #{first_name} #{last_name} here for #{product}!"
  excited ? greeting.upcase : greeting
end
```

* Do town names lab here

## Recursion

* Consider the factorial operator: 5! == 5 * 4 * 3 * 2 * 1 == 120

```
def factorial(n)
  product = 1
  n.times do |multiplier|
    product *= (multiplier + 1)
  end
  product
end
```

* Recursive solution!

```
def factorial(n)
  if n == 1
    1
  else
    n * factorial(n - 1)
  end
end
```

* Do fibonacci lab here
* Binary search lab is extra, likely won't have time for it
