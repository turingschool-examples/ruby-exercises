# Ruby Exercises

This is a collection of exercises to practice various aspects of Ruby.

Practicing in this manner (small, bite-sized problems that you can do repeatedly) is a _fantastic_ way to solidify programming concepts.

Each folder in this repository is a set of related exercises. Open up the folder and read the README to learn more about them.

## Structure of this repository
- Each folder contains a `README.md` file that provides a summary of what skills you will develop with these exercises
- Each exercise file within the folder will begin with comments providing more detail on:
  1. How you need to manipulate or work with this file to complete the exercise.
  2. Some exercises will require you to manipulate the "current" file and run it. Other exercises will require you to create _new_ files and then reference those files for the "current" file to work.

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

### 2. Install `bundler` gem

run `gem install bundler` in your terminal

### 3. From the command line, run `bundle install`

You _should_ see something like this:

```
$ bundle install
Fetching gem metadata from https://rubygems.org/........
Resolving dependencies...
Using bundler 2.1.4
Using byebug 11.1.3
Fetching coderay 1.1.2
Installing coderay 1.1.2
Using diff-lcs 1.4.4
Using method_source 1.0.0
Using pry 0.13.1
Fetching pry-byebug 3.9.0
Installing pry-byebug 3.9.0
Fetching rspec-support 3.10.1
Installing rspec-support 3.10.1
Fetching rspec-core 3.10.1
Installing rspec-core 3.10.1
Fetching rspec-expectations 3.10.1
Installing rspec-expectations 3.10.1
Fetching rspec-mocks 3.10.1
Installing rspec-mocks 3.10.1
Fetching rspec 3.10.0
Installing rspec 3.10.0
Bundle complete! 3 Gemfile dependencies, 12 gems now installed.
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

Please check that you've followed [mod0 setup instructions](http://mod0.turing.io/setup-instructions)
and this guide to [install rbenv and a version of ruby](https://github.com/turingschool-examples/backend_module_0_capstone#environment).

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

If you want to view the instructions in your web browser, you can view them here: [data-types/strings/README.md](https://github.com/turingschool/ruby-exercises/tree/main/data-types/strings)


----------------------------------
