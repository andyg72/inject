class Array

  def andy_inject(a = nil, b = nil, &block)
    if a.class == Symbol
      memo = self.first
      p memo
      p block
      if block != nil
        self[1..self.length].each do | n |
          memo = block.call(memo, n)
          p memo
        end
      elsif symbol != nil
        p 'symbol received'
        op = symbol.slice(-1)
        p op
        self[1..self.length].each do | n |
          case op
          when '+' then memo = memo + n
          when '-' then memo = memo - n
          when '*' then memo = memo * n
          else p op
          end
        end
      else
        p 'andy'
      end
      return memo
    elsif a.class != Symbol
      p 'a not a symbol'
    else
      p 'something else'
    end
    
  end # method end

end # class end
