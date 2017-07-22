IO.puts "Hello, World!"

fbFunc = fn
  ( 0, 0, _ ) -> "FizzBuzz"
  ( _, 0, _ ) -> "Fizz"
  ( _, _,  arg ) -> arg
end

prefix = fn (stringOne) ->
  fn (stringTwo) ->
    "#{stringOne} #{stringTwo}"
  end
end

&(&1 + 2)
&(IO.inspect(&1))
&IO.inspect/1
