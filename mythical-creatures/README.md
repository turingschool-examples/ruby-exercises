# Mythical Creatures

A collection of exercises to practice Ruby, and test-driven design (TDD).

Here's a guide that might be helpful in understanding the principles covered in these tests: [josh.works/turing-backend-prep-mythical-creatures](https://josh.works/turing-backend-prep-mythical-creatures).

## How to Run

In order to complete these exercises create a class for each of the mythical creatures in the `spec` directory.

Navigate to the `mythical-creatures` directory in your terminal, and then run your first test:

```
rspec spec/unicorn_spec.rb
```

If you get an error regarding a certain gem not being installed, you may need to run the following command from your terminal:

```
bundle install
```

There's a video walk-through of the setup and the whole `unicorn_spec.rb` file here: [https://youtu.be/mocwGsu41yw](https://youtu.be/mocwGsu41yw).

Continue to follow the errors that your test provides until the test passes. Then, unskip the next test by removing the line that says `skip`. Continue until all tests pass for all creatures.

## Suggested Order

* `unicorn_spec.rb` [video walk-through](https://youtu.be/mocwGsu41yw) (watch this first)
* `vampire_spec.rb`
* `dragon_spec.rb` [video walk-through](https://youtu.be/NIPerY-xuCk)
* `hobbit_spec.rb` [video walk-through](https://youtu.be/uYGS-DCNR-0)
* `pirate_spec.rb`
* `wizard_spec.rb`
* `medusa_spec.rb`
* `werewolf_spec.rb`
* `centaur_spec.rb`
* `ogre_spec.rb`
* `lovisa_spec.rb`
* `direwolf_spec.rb`
* `the_journey_spec.rb` (see below)

## Extra Challenges

### Testing with RSpec


* [How to use RSpec without Rails](https://gist.github.com/ap2322/d8081e38d448acccf2cdc25308be565f) for these exercises.
* [You can check out one of our tutorials about RSpec](http://tutorials.jumpstartlab.com/topics/internal_testing/rspec_and_bdd.html)
or [this blog post](http://gregelizondo.github.io/2014/03/03/getting-started-with-rspec-and-unit-testing.html)
* Pick three of the creatures and implement RSpec tests for each
* For each creature, add at least three additional tests / pieces of functionality
* Submit pull requests adding the RSpec tests to the repository

### The Dreaded `if` Statement

Can you complete implementations of each of the creatures without using `if`
statements? Think about how removing them affects your code. Remember that
a `case` is just a different form of `if`, so don't use it.

### Imagine Two Creatures

Can you add two new creatures to the repository? How about a Hydra? Add rspec
tests exercising some of the following concepts:

* Passing data into `initialize`
* Using methods to change the internal state of an instance
* Using methods to query the internal state of an instance
* Functionality that necessitates the internal use of an Array

### So you feel like going on a journey?

 Are you up for an adventure traveller? This test involves the creation of new creatures as well as calling upon
 creatures from times once past.

 To get gold you are required to complete quests that act as mini exercisms; you will see three kinds:
 1. The number of times a letter is different.
 2. Adding up the sum of a number and then squaring it i.e. for 5 => 225 = (1 + 2 + 3 + 4 + 5)**
 3. Turning a num into a roman numeral.
