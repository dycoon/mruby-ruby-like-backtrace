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

