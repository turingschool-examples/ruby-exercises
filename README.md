# Ruby Exercises

This is a collection of exercises to practice various aspects of Ruby. 

Practicing in this manner (small, bite-sized problems that you can do repeatedly) is a _fantastic_ way to solidify programming concepts. 

Each folder in this repository is a set of related exercises. Open up the folder and read the README to learn more about them.

## Structure of this repository
- Each folder contains a `README.md` file that provides a summary of what skills you will develop with these exercises
- Each exercise file within the folder will begin with comments providing more detail on:
  1. How you need to manipulate or work with this file to complete the exercise.
  2. Some exercises will require you to manipulate the "current" file and run it. Other exercises will require you to create _new_ files and then reference those files for the "current" file to work.
  
If you're new here, watch this getting-started video. We'll install the ruby-exercises directory, figure out how to get set up to practice some `ruby`, and then we'll work through the _complete_ full exercises:

[![Intro to ruby-exercises and strings.rb (YouTube)](images/embedded-video-screenshot-getting-started.jpg)]((https://youtu.be/aeAkLxr5diE))

## Setup

### 1. Clone this repository

You don't need to fork this repository; clone it to your laptop

in your `/turing` directory on your laptop (or whatever directory you want this repository to live inside of), run:

```
// using ssh keys
git clone git@github.com:turingschool/ruby-exercises.git
// using https, if the above doesn't work:
git clone https://github.com/turingschool/ruby-exercises.git
```  

Once this command runs, you'll now have a "local" copy of this entire repository, living right on your laptop. 

### 2. From the command line, `cd` into the `ruby-exercises` directory.

### 3. From the command line, run `bundle`

You _should_ see something like this: 

```
$ bundle
Fetching gem metadata from https://rubygems.org/.............
Using bundler 2.0.2
Fetching minitest 5.2.1
Installing minitest 5.2.1
Bundle complete! 1 Gemfile dependency, 2 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```
If you see that, great!

If you get an error like:

```
zsh: command not found: bundle
```

you need to install the `bundler` gem. Run:

```
$ gem install bundler
```

If this command throws an error, you either:
  1. Don't have `rbenv` installed
  2. You've not yet installed a version of Ruby. 

Please check that you've followed [mod0 setup instructions](http://mod0.turing.io/setup-instructions) and this guide to [install rbenv and a version of ruby](https://github.com/turingschool-examples/backend_module_0_capstone#environment). 

> Hey, hold up. What is this `bundle` thing, and what does it do? what does `gem install bundler` do?

Great question! 

`bundler` is Ruby's [package manager](https://bundler.io/). If you want to install extra code that works with Ruby, you'll use `bundler` to do it. Once you _have_ the `bundler` installed, it is "used" by typing `bundle` into your terminal. 

It is used in conjunction with the `Gemfile` and `Gemfile.lock` files you see in this repository, to manage Ruby gems.

Here's an exhaustive amount of information about gems, if you're so inclined: [guides.rubygems.org/what-is-a-gem](https://guides.rubygems.org/what-is-a-gem/)

-------------------

Once `bundle` has run successfully, open up the first test!

```
$ cd data-types/strings
$ atom .
```

And read through the `README.md` for further instructions!

If you want to view the instructions in your web browser, you can view them here: [data-types/strings/README.md](https://github.com/turingschool/ruby-exercises/tree/master/data-types/strings)

Otherwise, please work through [this video guide](https://youtu.be/aeAkLxr5diE) to fully understand how to run these exercises. They can be mostly self-explanitory, but even if you know exactly how to make these tests pass, you'll gain value from the video. 

----------------------------------

## Suggested order

This repository of exercises is one of the best tools you've got to learn Ruby. Every minute spent here is time _very_ well spent. 

* Week 1
  * data-types
    * strings (start here!!!) [video walk-through](https://youtu.be/aeAkLxr5diE)
    * ints_and_floats
    * collections/arrays [video walk-through](https://youtu.be/RUnd1Uu0AyE)
  * initialize
    * aardvark
    * beaver
    * cat
    * dog
    * eel
    * ferret
    * groundhog
    * horse
  * mythical-creatures
    * Unicorn [video walk-through](https://youtu.be/mocwGsu41yw)
    * Vampire
    * Dragon [video walk-through](https://youtu.be/NIPerY-xuCk)
  * enumerables/exercises
    * find_pattern_test
    * find_test
    * map_pattern_test
    * map_test
    * select_pattern_test
    * select_test

* Week 2
  * data-types/collections/hashes.rb
  * objects-and-methods/exercise-1
  * mythical-creatures
    * Hobbit [video walk-through](https://youtu.be/uYGS-DCNR-0)
    * Pirate
    * Wizard
  * command-query
    * leather_chair_test.rb
    * baby_test.rb
    * beers_test.rb

* Week 3
  * datatypes/collections/advanced_nested_collections.rb [video walk-through](https://youtu.be/9AaElA4elDU)
  * object-and-methods/exercise-2
  * mythical-creatures
    * Medusa
    * Werewolf
    * Centaur
    * Ogre
  * command-query
    * adult_test.rb
    * roll_call_test.rb
    * wallet_test.rb

* Week 4+
	* Enumerables/exercises
	* Iteration
	* Command and Query
	* Complete/Redo Mythical Creatures
