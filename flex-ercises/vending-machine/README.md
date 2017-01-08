# Vending Machine

a Ruby objects and methods exercise using enumerables

```ruby
class Snack
  attr_reader :name, :quantity
  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end
end
```

* The above Snack class has two attributes: name and quantity.
* Tests are built for the VendingMachine class.
* Your mission is to build out the VendingMachine class on your own.

Run a test file by calling it with `ruby`:

`$ ruby test/vending_machine_test.rb`

Once a single test is passing, remove "skip" to run the following test.
