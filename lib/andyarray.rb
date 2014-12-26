class Array
  def andy_inject(a = nil, b = nil, &block)
    a == nil || a.class == Symbol ? memo = self.first : memo = a
    if a.class == Symbol || b.class == Symbol
      range_start, my_proc = a.class == Symbol ? [1, a.to_proc] : [0, b.to_proc]
      self[range_start..self.length].each { | n | memo = my_proc.call(memo, n) }
    else
      a == nil ? range_start = 1 : range_start = 0
      self[range_start..self.length].each { | n |  memo = block.call(memo, n) }
    end
    return memo
  end

  def andy_inject_recursion(a = nil, b = nil, &block)
    #write a method to do the same, but using a recursive method
    #key to it is to figure out how to iterate through the array to find n 
    #whilst recursively generating the value for memo
    #e.g. memo = n + method to get memo
  end

end
