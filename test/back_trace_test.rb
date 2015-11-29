def g_func
  raise "test"
end

def f_func
  begin
    g_func
  rescue => e
    raise e
  end
end

assert('mruby-rubylikebacktrace') do

  begin
    f_func
  rescue => e
    backtrace = e.backtrace.join("\n")
    assert_true(backtrace.include?("g_func"))
    assert_true(backtrace.include?("f_func"))
  end

end
