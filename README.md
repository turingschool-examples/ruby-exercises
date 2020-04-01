# Ruby Exercises

This is a collection of exercises to practice various aspects of Ruby. 

Practicing in this manner (small, bite-sized problems that you can do repeatedly) is a _fantastic_ way to solidify programming concepts. 

Each folder in this repository is a set of related exercises. Open up the folder and read the README to learn more about them.

_Note: If you've just stumbled across this repository online, and are looking to work through these exercises, consider working through these [setup instructions](http://mod0.turing.io/setup-instructions) and [this guide to installing rbenv and a version of ruby](https://github.com/turingschool-examples/backend_module_0_capstone#environment), as these two items are pre-requisites to working on these ruby exercises below._

## Structure of this repository
- Every folder/directory in this repo contains a related set of exercises.
- These folders can be tackled in any order depending on what skills you want to develop.
- Each folder contains a `README.md` file that provides a summary of what skills you will develop with these exercises
- Each exercise file within the folder will begin with comments providing more detail on:
 - What skill you'll develop with this exercise and how this exercise will help you develop that skill
 - A description of the exercise, and how you'll know that you've completed the exercise
 - How you need to manipulate or work with this file to complete the exercise.
- some exercises will require you to manipulate the "current" file and run it. Other exercises will require you to create _new_ files and then reference those files for the "current" file to work.

## Getting Started

If you are new to Ruby, please see [Turing Prep Chapter 1: Make Mod 1 Easier Than It Otherwise Would Be](https://josh.works/turing-backend-prep-01-intro) for help getting started with these exercises.

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

If you see something like:

```
bash: command not found: bundle
```

you need to install the `bundler` gem. Run:

```
$ gem install bundler
```
If `gem install bundler` doesn't work, you probably either don't have `rbenv` installed, or you've not yet installed ruby. Make sure you've followed [mod0 setup instructions](http://mod0.turing.io/setup-instructions) and [installed rbenv and a version of ruby](https://github.com/turingschool-examples/backend_module_0_capstone#environment). 

> Hey, hold up. What is this `bundle` thing, and what does it do? what does `gem install bundler` do?

Great question, dear reader. 

`bundler` is Ruby's [package manager](https://bundler.io/). If you want to install extra code that works with Ruby, you'll use `bundler` to do it. Once you _have_ the `bundler` installed, it is "used" by typing `bundle` into your terminal. 

(The short version is, it looks at whatever is in your `Gemfile` and `Gemfile.lock` files, and installs all required gems)

If you don't have `bundler` installed yet, you'll get the `command 'bundle' not found` error. At which point you need to install `bundler` with ruby. The way you install new gems in Ruby is by typing `gem install <gem_name>`. 

Here's an exhaustive amount of information about gems, if you're so inclined: [guides.rubygems.org/what-is-a-gem](https://guides.rubygems.org/what-is-a-gem/)

-------------------

once `bundle` has run successfully, you're good to go! Read on to figure out the _order_ in which you should start this collection of exercises.

## Order

Here is a very rough suggested timeline for working on the exercises. This is just a suggestion, as the exercises can be completed in any order. 

Where there are video walk-throughs, it could be useful to watch the whole video. These walkthroughs touch on many useful concepts and tools you'll use for the rest of your time at Turing (and your job!), like `how to google well`, `terminal shortcuts`, `Atom configurations you should check out`, `pry and using a debugger`, and lots more. The time you spend watching and studying these walkthroughs will save you multiples of that time down the road.

> Isn't having a video walkthrough of one of these exercises a little like cheating?

Great question! These videos pair well with your learning goals for a few reasons:

1. There are only a few video walk-throughs. If you do _all_ of the exercises, you'll do many exercises without any assistance.
1. The things you learn from the walk-throughs will enable you to learn more and better understand what you're doing.
3. You don't _have_ to watch the videos before you start solving these exercises. You can use them _just_ when you get stuck. Each video has an "index" of what is covered at each point in the video, and where in the video I address a given test. For example, you can be stuck half-way through the `advanced_nested_collections` exercise, click through to the video, and jump right to the test you're working on. 

## Suggested workflow

After you do one of these exercises, please please please jot down _on a piece of paper_ some (or all) of the code that you wrote. Here's [how one this random alum approaches learning, _actual learning_ of complex technical material](https://josh.works/learning-how-to-learn)

Then delete the code from your editor and make the tests pass a second time.

[Here's a way of organizing a paper notebook that could be helpful right about now](https://josh.works/how-i-take-notes-aka-add-an-index-to-your-notebook)

The process of writing the code down by hand and rebuilding it feels _so hard_ when you first start it. Once you get in the habit, you'll experience the benefits. You'll learn 5x more if you write code down by hand, and redo each exercise at least once, after your initial pass through. 

----------------------------------

## Suggested order

This repository of exercises is one of the best tools you've got to learn Ruby. Every minute spent here is time _very_ well spent. 

* Week 1
  * data-types
    * strings [video walk-through](https://youtu.be/BKqo2w0W7S0)
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
    * Medusa [video walk-through](https://www.youtube.com/watch?v=hzFW_BRdHLY)
    * Werewolf
    * Centaur
    * Ogre [video walk-through _of a refactor_](https://youtu.be/Z_e7p8cDF1Q)
  * command-query
    * adult_test.rb
    * roll_call_test.rb
    * wallet_test.rb

* Week 4+
	* Enumerables/exercises
	* Iteration
	* Command and Query
	* Complete/Redo Mythical Creatures
