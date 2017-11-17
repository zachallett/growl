# Growl

A simple wrapper to the command line interface for the [Growl OSX notification system](http://growl.info/).

## Setup

```Elixir
defp deps do
  [
    {:growl, github: "zachallett/growl"}
  ]
```

## Usage
Within the script you would like to create a `growl` notification, make the module call as follows:

```Elixir
Growl.notify("This is a notification")
```

The API accepts messages in a string format, as well as a list. If the first argument is a list, the first object is the title line, with subsequent lines being the body of the notification.

```Elixir
Growl.notify(["Example", "This is an example notification"])
```

would give the following notification:

![Forced Update](https://github.com/zachallett/growl/blob/master/multi_line_notification.png?raw=true "Multi-Line notification Screenshot"))

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
