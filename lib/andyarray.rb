class Array

  def andy_inject(a = nil, b = nil, &block)
    a == nil || a.class == Symbol ? memo = self.first : memo = a
    if block != nil && a == nil
      self[1..self.length].each do | n |
        memo = block.call(memo, n)
      end
    elsif block != nil && a != nil
      self[0..self.length].each do | n |
        memo = block.call(memo, n)
      end
    elsif a.class == Symbol && b == nil
      self[1..self.length].each do | n |
        case a.slice(-1)
        when '+' then memo = memo + n
        when '-' then memo = memo - n
        when '*' then memo = memo * n
        else p 'unknown operator'
        end
      end
    elsif b.class == Symbol && a != nil
      self[0..self.length].each do | n |
        case b.slice(-1)
        when '+' then memo = memo + n
        when '-' then memo = memo - n
        when '*' then memo = memo * n
        else p 'unknown operator'
        end
      end
    else
      p 'incorrect syntax for andy_inject'
    end
    return memo
  end # method end
end # class end
