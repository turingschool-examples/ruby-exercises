# Contributing to Enums Exercises

First of all, **thank you** for helping with the Enums exercises!

## Issues

Please file issues on the [GitHub issues list](https://github.com/JumpstartLab/enums-exercises/issues) and give as much detail as possible.

## Philosophy

This project introduces enumerable methods one at a time.

First it shows how one might solve a problem using `#each`, to demonstrate
that there is no magic involved. This is just plain Ruby.

Second, it demonstrates how to use the enumerable method to solve the exact
same problem.

The exercises for a given enumerable method will reside in two separate
test suites, one for `#each` and one for the enumerable method itself.

Each test suite is built up in the following way:

1. A test that is passing, which shows the basic pattern.
2. A test where the block of the loop is missisg.
3. A test where the entire loop is missing.
4. Any number of tests where all but the input data and the assertion
are missing.

This gradually transfers the responsibility to the learner, while still
providing examples that they can look at.

In addition, two more test suites will be generated and put under
`test/solutions/`, so that running the test suite verifies that our generator
works, and so that the learner can go look at solutions if they get stuck.

## Creating a New Exercise

Creating an exercise for an enumerable method requires 4 steps:

1. Create the generator.
2. Create the template files.
3. Run the generate rake task.
4. Run the tests.

### Step 1: Create the Generator

Run the rake task `rake new[selector]` where `selector` is the name of the method.

I.e. if you are generating the exercise for the enumerable method `count` then the command is:

```ruby
rake new[count]
```

Remember to add the question mark for predicate methods:

```ruby
rake new[include?]
```

Edit the new file in the `lib/generators/` directory to add problem data.

```ruby
# lib/generators/count_problem.rb
class CountProblem
  def self.test_suites
    exercise = Exercise.new(:select)

    # lots of problems will go here

    exercise.test_suites
  end
end
```

Create as many `Problem`s as you can come up with, e.g.:

```ruby
exercise << Problem.new(
  "count_words_with_three_letters",
  {"words" => %w(pill bad finger cat blue dog table red)},
  {"tally" => 4},
  "word.length == 3"
)
```

Take a look at the `MapProblem` class. Notice this about the problems:

```ruby
class MapProblem
  def self.test_suites
    exercise = Exercise.new(:map)

    exercise << Problem.new(...).example!
    exercise << Problem.new(...).loop!
    exercise << Problem.new(...).assignment!
    exercise << Problem.new(...) # all the rest are like this

    exercise.test_suites
  end
end
```

This is what is used to provide less and less code up front in each test.

### Step 2: Create the Template Files

Edit the two templates under `lib/templates/` in a directory named after
the enumerable method, e.g.:

```plain
lib/templates/count/each.rb
lib/templates/count/enum.rb
```

#### The Pattern Using `#each`:

The resulting `pattern` test suite should look like this:

```ruby
def test_count_words_with_three_letters
  words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
  tally = 0
  words.each do |word|
    tally += 1 if word.length == 3
  end
  assert_equal 4, tally
end
```

#### Using `#count`:

The resulting count test suite should have a test like this:

```ruby
def test_count_words_with_three_letters
  words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
  tally = words.count do |word|
    word.length == 3
  end
  assert_equal 4, tally
end
```

### Step 3: Generate the Test Suites

Open up `./lib/problems.rb` and add the selector to the `selectors` method:

```ruby
def selectors
  [
    # ...
    :count
  ]
end
```

Run `rake meta` to generate the generator.

Run `rake generate` to generate the exercises.

This should create 4 new files:

```plain
exercises/count_test.rb
exercises/count_pattern_test.rb
test/solutions/count_test.rb
test/solutions/count_pattern_test.rb
```

It should also update the `./lib/generator.rb` file.

### Step 4: Verify the generated tests

Run `rake test`.

The test suite. This will verify the solutions. If everything passes, the generator works, and you can commit.

## Submit a Pull Request

That's it. You're done.

Thank you again!
:heart: :sparkling_heart: :heart:

