
defmodule ASystemOfPatterns.Person do
  defstruct firstname: "", lastname: ""
end

defmodule ASystemOfPatterns do
  
  ##
  #Whaou what's this? it's a module attribute go look it up!
  @some_value 2

  ## This is the alias keyword, go lookup its usage!
  alias ASystemOfPatterns.Person

  #################################################
  # EXCERCISE 1 - Kill the ifs
  #################################################
  #
  # Detect whether an int 'a' is positive or negative
  #
  #def print_positive_negative(a) when a > 0 and is_integer(a), do: IO.puts "a=#{a} is positive"
  def print_positive_negative(a) when a >= 0 and is_integer(a) do
      IO.puts "a=#{a} is positive"
  end
  def print_positive_negative(a) when a < 0 and is_integer(a) do
      IO.puts "a=#{a} is negative"
  end
  def print_positive_negative(a) do
      IO.puts "This is not an integer"
  end
  

  #def print_positive_negative a do
    #if is_integer(a) do 
      #if (a >= 0) do
        #IO.puts "a=#{a} is positive"
      #else
        #IO.puts "a=#{a} is negative"
      #end
    #else
      #IO.puts "This is not an integer"
    #end
  #end

  
  #
  # Detecs whether a string starts with "kablam" or not
  #
  def start_with_kablam(a) when is_binary(a) do
    start_with_kablam String.match?(a, ~r/^kablam/)
  end
  def start_with_kablam(a) when a == true do
      IO.puts "Yes"
  end
  def start_with_kablam(a) when a == false do
      IO.puts "No"
  end
  #def start_with_kablam str do
    #if String.starts_with?(str, "kablam") do
      #IO.puts "yes"
    #else
      #IO.puts "no"
    #end
  #end
 
  ################################################
  # EXCERCISE 2 - Unpack structures
  ################################################
  
  # Prints each element of a 3-tuple in a seperate line
  # the tuple looks something like this {:ok, 0, 1, 2}
  def un_tuple tuple do
    {ok, elem1, elem2, elem3} = tuple
    IO.puts ok
    IO.puts elem1
    IO.puts elem2
    IO.puts elem3
  end

  #
  #
  # Print the head of the list and its tail in seperate lines
  # For example for this list : [1, 2, 3]
  # it should print:
  # 1
  # [2, 3]
  # Don't be afraid to use IO.inspect instead of IO.puts
  def un_list list do
    [h | t] = list
    IO.puts h
    IO.inspect t
  end

  #
  # print the values of the following map in seperate lines:
  # %{id: 1, name: "john", gender: :male}
  def un_map mapy do
    IO.puts mapy.id
    IO.puts mapy.name
    IO.puts mapy.gender
  end
  
  #
  #
  # print the values of the Person struct defined above
  #
  def un_struct person do
    IO.puts person.firstname
    IO.puts person.lastname
  end
 
  #################################################
  # EXCERCISE 3 - Tricky matching
  #################################################
  #
  # Implement a function that prints "some value" when value == @some_value
  # and that prints "not some value" when value != @some_value
  # without:
  # - using if statement
  # - when clauses
  # - hardcoded match
  #
  #def match_some_value value do
    #:unimplemented
  #end

  def match_some_value(value) when @some_value === value do
    IO.puts "Same value"
  end
  def match_some_value value do
    IO.puts "Not same value"
  end

end
