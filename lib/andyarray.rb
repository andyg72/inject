class Array
  def andy_inject(a = nil, b = nil, &my_proc)
    memo, array = a == nil || a.class == Symbol ? [self.first, self[1..self.length]] : [a, self]
    a.class == Symbol ? my_proc = a.to_proc : b.class == Symbol ? my_proc = b.to_proc : my_proc  
    array.each { | n | memo = my_proc.call(memo, n) }
    return memo
  end

#  example of how recursion could work from coach Henry
  # def henry_recur(sym, memo, sequence)
  #   if sequence.first
  #     new_memo = memo.send sym, memo, sequence.first
  #     henry_recur sym, new_memo, sequence.shift
  #   else
  #     memo
  #   end
  # end

  def andy_inject_recursion(a = nil, b = nil, &block)
    #write a method to do the same, but using a recursive method
    #key to it is to figure out how to iterate through the array to find n 
    #whilst recursively generating the value for memo
    #e.g. memo = n + method to get memo
  end

end
