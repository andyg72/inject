class Array

  def andy_inject(a = nil, b = nil, &block)
    a == nil || a.class == Symbol ? memo = self.first : memo = a
    if block != nil
      a == nil ? range_start = 1 : range_start = 0
      self[range_start..self.length].each do | n |
        memo = block.call(memo, n)
      end
    elsif a.class == Symbol || b.class == Symbol
      a.class == Symbol ? range_start = 1 : range_start = 0
      a.class == Symbol ? my_proc = a.to_proc : my_proc = b.to_proc
      self[range_start..self.length].each do | n |
        memo = my_proc.call(memo, n)
      end
    else
      p 'incorrect syntax for andy_inject'
    end
    return memo
  end # method end
end # class end
