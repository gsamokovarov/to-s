Have you ever tried to type `to_s` fast on a new keyboard?

```ruby
# Before
>> buffer << input.to-s
NoMethodError: undefined method `to' for #<Object:0x007f92c5059650>

# After
require 'to/s'

buffer << input.to-s
=> "#<Object:0x007fb2c9e566d0>"
```

You are welcome!
