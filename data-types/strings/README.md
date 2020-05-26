The `strings.rb` file has a number of exercises to help you better work with strings in ruby.  

Below is a list of methods that will help you complete the exercises - research each of them on the [Ruby Docs for Strings](https://ruby-doc.org/core-2.6.5/String.html) to learn more about what they do and how they are used.

There are additional methods that you will need to complete the exercises; each of these additional methods can be found in the Ruby Docs for Strings.

* `String#capitalize`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-capitalize)
* `String#count`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-count)
* `String#concat`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-concat)
* `String#chomp`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-chomp)
* `String#chop`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-chop)
* `String#delete`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-delete)
* `String#gsub`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-gsub)
* `String#include?`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-include-3F)
* `String#length`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-length)
* `String#reverse`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-reverse)
* `String#sub`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-sub)
* `String#strip`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-strip)
* `String#upcase`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-upcase)


[Here's a walk-through to this exercise](https://youtu.be/aeAkLxr5diE). It touches on far more than just the exact solutions to given answers, so please give it a watch, or at least watch a few chunks of it:

[![Intro to ruby-exercises and strings.rb (YouTube)](/images/embedded-video-screenshot-getting-started.jpg)]((https://youtu.be/aeAkLxr5diE))

#### What is minitest?

You'll be using a tool here called `Minitest`. Here's great additional reading:

[Assert Yourself: An Introduction to Minitest](https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest)


----------------


Did you read the Launch School post? Great! Then most of what is in this file should look a lot more readable to you.

As a quick test, answer the following questions:

- What is minitest?
- What does `assert_equal` mean? How many arguments does it expect?
- What will `assert_equal true, true` return?
- How do you “run” a test file?
- is a “failing” test a bad thing?
- does minitest run all the tests in order?
- Find a list of minitest assertions (google it!). What’s a cool one you found?

Awesome. If you can answer all of those questions, you’ve got your head wrapped around Minitest, at least enough to start these exercises. See the walk-through above to get started, or jump to a specific spot of the video below:

```
Timestamps:
0:40 - run `git clone` to copy down the repository
1:04 - `bundle` command throws a big error! "Could not find 'bundler'..."
1:30 - navigating to the correct directory to start the first recommended exercise
1:48 - opening up the correct directory in Atom
1:50 - using "tab complete" in the terminal
2:22 - "preview" the readme, so it's more easily readable in your editor
2:28 - first use of "command pallet"
2:56 - running the tests for the first time! Success!
3:09 - starting test_1, first getting an error, which is actually a sign of success
4:26 - ready to make test_1 pass, reading documentation, understanding details about ruby code, more keyboard shortcuts
8:09 - test_2
10:50 test_3
12:08 test_4
13:13 test_5
16:12 test_6
17:37 test_7
19:47 test_8
21:12 test_9
23:29 test_10
24:20 test_11
25:19 test_12
28:40 test_13
29:18 test_14
29:33 test_15
29:48 test_16
31:19 TAKE A BREAK PLEASE!
31:32 test_17
32:50 test_18
35:17 test_19
35:35 test_20, 21, 22, 23, 24 - combined into one chunk at 23:35
```