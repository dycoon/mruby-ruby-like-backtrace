# mruby-ruby-like-backtrace

```
def g
  raise "test"
end

def f
  begin
    g
  rescue => e
    raise e
  end
end

begin
  f
rescue => e
  puts "backtrace"
  puts  e.backtrace.map{|v| "  #{v}"}.join("\n")
end

```

This code outputs followin on mruby.

```
backtrace
  ../../sample.rb:17

```

Pointing call of backtrace...

If you use this mrbgems, you get following.

```
backtrace
  /work/small_repos/mruby-ruby-like-backtrace/mrblib/ruby_like_backtrace.rb:19:in Exception.initialize
  sample.rb:2:in Object.g
  sample.rb:7:in Object.f
  sample.rb:14
```

It is easier debigging.
