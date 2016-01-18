# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================

array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================

hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! {|x|
  if x.kind_of?(Array) == true
    x.map! {|y| y + 5}
  else; x + 5
  end}
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin

Reflection

What are some general rules you can apply to nested arrays?'

Some general rules you can apply to nested arrays is that they can be called by putting additional "[]"s after your original one.  Nested hashes work similarly, and if there are arrays within hashes, they can be called using similar logic.

What are some ways you can iterate over nested arrays?

You can iterate over nested arrays the same way you would iterate over a normal array.  The trick is that you need to iterate over the first array, and then iterate again on the inner array.  If you are only iterating one inner array, you could also access it by position.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used kind_of?() in order to check if an element we were iterating on was an array.  We decided this was a good way to distinguish the elements from on another.

=end
