## Lab 3: Fardingworth Falls

Let's generate some random town names for a Tycoon-style videogame. We can do this by combining the following generic name fragments:

* **Starts:** Bed, Brunn, Dun, Far, Glen, Tarn
* **Middles:** ding, fing, ly, ston
* **Ends:** borough, burg, ditch, hall, pool, ville, way, worth

After completing each step of this lab, check for code duplication. Can you extract logic to separate methods?

### Step 1

Write a method called `town_names` that randomly generates a number of town names by combining one Start, one Middle, and one End. Calling `town_names(5)` should give an array of 5 town names. If just `town_names` is called, generate 3 names.

### Step 2

Modify the method so that a Middle is only used with 25% probability for each name &ndash; otherwise just combine a Start and an End.

### Step 3

Modify the method so that calling `town_names(3, near: :water)` will randomly add either "-on-sea" or " Falls" to each of the names. Optionally, think of another value that `near:` could have, and add appropriate random suffixes or prefixes when it is provided.

### Step 4

Modify the method so that calling `town_names(3, short: true)` will always generate names without a Middle.

### Step 5

Modify the method to take the number of names as another keyword argument, i.e. `town_names(number: 3)`.

Verify that your method still works as expected when all possible parameters are provided, and when none are provided. For example, `town_names(number: 2, short: true, near: :water)`
