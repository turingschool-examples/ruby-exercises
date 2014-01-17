# Shovel and Shift

### Get acquainted with `<<` and `>>`

* `shovel_string_test.rb`
* `shovel_array_test.rb`
* `shovel_csv_test.rb`
* `shovel_face_test.rb`
* `shift_date_test.rb`
* `shift_fixnum_test.rb`
* `hash_default_test.rb`

### Fix bugs

* `sparkly_test.rb` - fix the bug
* `reading_list_test.rb` - fix the bug

## Notes

Short introduction to `<<`, also known as _the shovel operator_,
which isn't really an operator at all. It's a method.

Several classes in Ruby Core that have `<<` defined on them, for example:

* String
* Array
* Fixnum

Also, there are classes in the Ruby Standard Library that have a `<<` method:

* Date
* CSV::Row

It is also perfectly legal to define a `<<` method yourself:

```ruby
def <<(thingy)
  # now use thingy somehow
end
```

When used on `Fixnum` and `Date` it is usually called `shift` rather than `shovel`.
