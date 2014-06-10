## Lab 5: Needle in a Haystack

Add this code to a new Ruby file:

```
words = File.readlines('/usr/share/dict/words').map(&:chomp)
```

`words` is now an array of about 100,000 English words in alphabetical order. Neat!

### Step 1

Write a method called `word_search` that takes the `words` array and a single word as parameters, and returns the index at which that word can be found in the array, or `nil` if it could not be found. The built-in array methods that relate to finding things (like `find`) are off-limits for this exercise.

### Step 2

Write a new method called `binary_search` that behaves identically to the method from Step 1, but performs a **recursive binary search** to find the index. Binary search only works on an array that's already sorted &ndash; fortunately, that's what we have. The algorithm goes something like this:

1. Get the midpoint of the array.
2. Is the element at the midpoint the one we're looking for? If so, we're done, return that index.
3. Otherwise, is the element we're looking for "less than" the element at the midpoint? If so, perform a binary search for the element in the half of the array that's below the midpoint.
4. Otherwise, the element we're looking for must be "greater than" the element at the midpoint, so perform a binary search for the element in the half of the array that's above the midpoint.

### Step 3

Copy the following code into your Ruby file (you may have to modify it depending on how you wrote your `word_search` and `binary_search` methods). Run it, and after a couple seconds, you should see a few columns of numbers that indicate the relative performance of your two search methods.

```ruby
require 'benchmark'

Benchmark.bmbm do |bm|
  bm.report('word_search'){ 100.times{ word_search(words, 'veranda') } }
  bm.report('binary_search'){ 100.times{ binary_search(words, 'veranda') } }
end
```
