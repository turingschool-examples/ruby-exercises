## Overview

These exercises are intended to practice with the concept of initialization. Some of them will require additional methods besides initialize.

## Running the tests

Navigate to the `initialize` folder.

Run each test with `rspec spec/<class_name>_spec.rb`. Work on the tests in alphabetical order beginning with `aardvark_spec.rb`, then `beaver_spec.rb`, etc.

If you see an error like:

```
> ruby initialize/test/beaver_spec.rb
Traceback (most recent call last):
	2: from initialize/test/beaver_spec.rb:3:in `<main>'
	1: from /Users/joshthompson/.rvm/rubies/ruby-2.5.3/lib/ruby/site_ruby/2.5.0/rubygems/core_ext/kernel_require.rb:54:in `require'
/Users/joshthompson/.rvm/rubies/ruby-2.5.3/lib/ruby/site_ruby/2.5.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- ./lib/beaver (LoadError)
```

You'll have to _create_ the missing file. Look in the `lib` directory, see how the only file is `aardfark.rb`? This error message is saying
> I cannot find ./lib/beaver.rb

So, create a `beaver.rb` file in the `lib` directory, and try it again!

## Learning about Initialization

You'll be well served to read [Classes and Objects - Part I (LaunchSchool)](https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1).

These exercises pair very well with the above written explanations.

-------------------------------

The difficulty of these exercises steps up when you get to `kangaroo_spec.rb`, so once you've completed a few of them, consider jumping tracks to look at the `mythical-creatures` exercises.

Once you've completed some of _those_ exercises, you'll be in good shape to come back to these initialization exercises and make some more progress.

Good luck!
