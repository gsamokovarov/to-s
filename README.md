Have you ever tried to type `to_s` fast?

```ruby
>> buffer << input.to-s
NoMethodError: undefined method `to' for #<Object:0x007f92c5059650>
```

Bummer, right? 

```
require 'to/s'

buffer << input.to-s
=> "#<Object:0x007fb2c9e566d0>"
```

You are welcome!
