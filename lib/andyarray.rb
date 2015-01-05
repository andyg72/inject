class Array
  def andy_inject(a = nil, b = nil, &my_proc)
    memo, array = a == nil || a.class == Symbol ? [self.first, self[1..self.length]] : [a, self]
    a.class == Symbol ? my_proc = a.to_proc : b.class == Symbol ? my_proc = b.to_proc : my_proc  
    array.each { | n | memo = my_proc.call(memo, n) }
    return memo
  end

  def andy_inject_recursion(a = nil, b = nil, &my_proc)
    memo, array = a == nil || a.class == Symbol ? [self.first, self[1..self.length]] : [a, self]
    a.class == Symbol ? my_proc = a.to_proc : b.class == Symbol ? my_proc = b.to_proc : my_proc 
    if array.first
      new_memo = my_proc.call(memo, array.first)
      array[1..array.length].andy_inject_recursion(new_memo, &my_proc)
    else
      memo
    end
  end

end
