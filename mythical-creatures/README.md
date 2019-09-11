# Mythical Creatures

A collection of exercises to practice Ruby, and test-driven design (TDD).

## How to Run

In order to complete these exercises create a class for each of the mythical creatures in the `test` directory.

Navigate to the `mythical-creatures` directory in your terminal, and then run your first test:

```
ruby test/unicorn_test.rb
```

That will likely produce an error saying that no `unicorn.rb` file exists.

If you get an error regarding `minitest` you may need to run the following command from your terminal:

```
gem install minitest
```

Otherwise, Create that file in the `lib` directory (`touch lib/unicorn.rb`) and then run your test again. Continue to follow the errors that your test provides until the test passes. Then, unskip the next test by removing the line that says `skip`. Continue until all tests pass for all creatures.

## Suggested Order

* `unicorn_test.rb` [video walk-through](https://youtu.be/mocwGsu41yw) (watch this first)
* `vampire_test.rb`
* `dragon_test.rb` [video walk-through](https://youtu.be/NIPerY-xuCk)
* `hobbit_test.rb` [video walk-through](https://youtu.be/uYGS-DCNR-0)
* `pirate_test.rb`
* `wizard_test.rb`
* `medusa_test.rb`
* `werewolf_test.rb`
* `centaur_test.rb`
* `ogre_test.rb`

## Extra Challenges

### Testing with RSpec

For the majority of the class we use minitest because there's so little to
learn about the API. But a huge part of the Ruby community favors the
expressiveness of RSpec.

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

Can you add two new creatures to the repository? How about a Hydra? Add minitest
tests exercising some of the following concepts:

* Passing data into `initialize`
* Using methods to change the internal state of an instance
* Using methods to query the internal state of an instance
* Functionality that necessitates the internal use of an Array
