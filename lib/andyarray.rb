class Array
  def andy_inject(a = nil, b = nil, &block)
    a == nil || a.class == Symbol ? memo = self.first : memo = a
    if block != nil
      a == nil ? range_start = 1 : range_start = 0
      self[range_start..self.length].each { | n |  memo = block.call(memo, n) }
    elsif a.class == Symbol || b.class == Symbol
      a.class == Symbol ? range_start = 1 : range_start = 0
      a.class == Symbol ? my_proc = a.to_proc : my_proc = b.to_proc
      self[range_start..self.length].each { | n | memo = my_proc.call(memo, n) }
    else
      p 'incorrect syntax for andy_inject'
    end
    return memo
  end # method end
end # class end
