# Enums Exercises

## How exercises_1 are Organized

These exercises are broken up by method -- each enumerable method will be covered by
2 test files. In one test file, we'll practice using the enumerable
in question (`map`, `find`, etc). In the other, we'll look at how the enumerable
might be implemented in terms of the fundamental `each` method.

Remember that all the enumerable methods _are_ implemented in terms of `each`,
so by looking at the methods in this way, we'll gain some insight
into how each method is put together under the hood.

## Solving the Exercises

After cloning the repository down, and checking out a new branch, we are ready
to get started on these enumerables exercises.

The goal of these exercises is to help you understand enumerables, both how
they work and how they can be replicated through the use of the #each, the
basis of all enumerables.

For each method, there are two files of interest. Let's look at `map` as an example:

1. `exercises/map_pattern_test.rb`
2. `exercises/map_test.rb`

In the `map_pattern_test.rb` you'll find a collection of exercises which do what `map` is good at,
but they do it just with `each`. This file will give us some insight into how map works internally,
hopefully helping us gain a deeper understanding around when we might use each one.

Then, in the other file, `map_test.rb` you'll find the same examples using `map` itself.
These examples will generally be much more concise, and will give a good demonstration
of how using the appropriate enumerable method (as opposed to doing everything with `each`)
can make our lives much easier!

__Running the Test Files__

To run each example, we'll simply use the `ruby` command in combination with the
path to that file. For example to run the 2 map files above, we would use:
`ruby exercises/map_pattern_test.rb` and `ruby exercises/map_test.rb`, respectively.

__Recommended Exercise Order__

You should perform the exercises in the order below:

* `map`
* `select`
* `find` (aka `detect`)
* `sort_by`
* `count`
* `reject`
* `reduce`
* `any?`
* `all?`
* `none?`
* `one?`
* `group_by`
* `zip`

You should perform the pattern test first, and then the test.

For example, you should work on `map_pattern_test.rb` followed by `map_test.rb`
Upon completing that, you should do `select_pattern_test.rb` and then
`select_test.rb` and so forth.

__Recommended Workflow__

Here's how we recommend you work through the exercises:

* Open your text editor with two panes (left and right)
* In the left pane, open the pattern file like `map_pattern_test.rb`
* In the right pane, open the matching file like `map_test.rb`
* Run the `map_pattern_test.rb` and solve the first exercise
* Run the `map_test.rb` and solve the same exercise
* Repeat for each matching pair of exercises
* Commit your solutions after finishing each file


## How exercises_2 are Organized

After you are familiar with several enumerables, the exercises in this folder will help you work on your problem solving with enumerables. You will need to select which enumerable will best fit the problem.

For the `enumerables_one_test`, you will only need `map`, `find`, and `find_all` to complete the tasks.

For `enumerables_exercises_test`, you will need to consider all enumerables and pick which one will be the best choice.

```

## License

The MIT License (MIT)

Copyright (c) 2014 Jumpstart Lab
