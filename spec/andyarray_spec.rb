require 'andyarray'

describe Array do 

  context 'andy_inject with a block' do

    it 'can add up numbers' do
      expect([1,2,3].inject{ | memo, n | memo + n }).to eq(6)
      expect([1,2,3].andy_inject{ |memo, n | memo + n}).to eq(6)
      # expect([1,2,3].andy_inject_recursion{ |memo, n | memo + n}).to eq(6)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject{ | memo, n | memo - n}).to eq(-4)
      expect([1,2,3].andy_inject{ |memo, n | memo - n}).to eq(-4)
      # expect([1,2,3].andy_inject_recursion{ |memo, n | memo - n}).to eq(-4)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject{ | memo, n | memo * n}).to eq(6)
      expect([1,2,3].andy_inject{ |memo, n | memo * n}).to eq(6)
      # expect([1,2,3].andy_inject_recursion{ |memo, n | memo * n}).to eq(6)
    end

  end

  context 'andy_inject with a symbol' do

    it 'can add up numbers' do
      expect([1,2,3].inject(:+)).to eq(6)
      expect([1,2,3].andy_inject(:+)).to eq(6)
      # expect([1,2,3].andy_inject_recursion(:+)).to eq(6)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject(:-)).to eq(-4)
      expect([1,2,3].andy_inject(:-)).to eq(-4)
      # expect([1,2,3].andy_inject_recursion(:-)).to eq(-4)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject(:*)).to eq(6)
      expect([1,2,3].andy_inject(:*)).to eq(6)
      # expect([1,2,3].andy_inject_recursion(:*)).to eq(6)
    end

  end

  context 'andy_inject with an argument and a block' do

    it 'can add up numbers' do
      expect([1,2,3].inject(5){ | memo, n | memo + n }).to eq(11)
      expect([1,2,3].andy_inject(5){ | memo, n | memo + n }).to eq(11)
      # expect([1,2,3].andy_inject_recursion(5){ | memo, n | memo + n }).to eq(11)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject(5){ | memo, n | memo - n }).to eq(-1)
      expect([1,2,3].andy_inject(5){ | memo, n | memo - n }).to eq(-1)
      # expect([1,2,3].andy_inject_recursion(5){ | memo, n | memo - n }).to eq(-1)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject(5){ | memo, n | memo * n }).to eq(30)
      expect([1,2,3].andy_inject(5){ | memo, n | memo * n }).to eq(30)
      # expect([1,2,3].andy_inject_recursion(5){ | memo, n | memo * n }).to eq(30)
    end

  end

  context 'andy_inject with an argument and a symbol' do

    it 'can add up numbers' do
      expect([1,2,3].inject(5, :+)).to eq(11)
      expect([1,2,3].andy_inject(5, :+)).to eq(11)
      # expect([1,2,3].andy_inject_recursion(5, :+)).to eq(11)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject(5, :-)).to eq(-1)
      expect([1,2,3].andy_inject(5, :-)).to eq(-1)
      # expect([1,2,3].andy_inject_recursion(5, :-)).to eq(-1)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject(5, :*)).to eq(30)
      expect([1,2,3].andy_inject(5, :*)).to eq(30)
      # expect([1,2,3].andy_inject_recursion(5, :*)).to eq(30)
    end

  end

  context 'andy_inject prioritises symbol over block if both provided' do

    it 'if passed an argument, symbol and block' do
      expect([1,2,3].andy_inject(5, :*){| memo, n | memo + n }).to eq(30)
    end
    
    it 'if passed a symbol and block (btw Ruby errors on this!)' do
      expect([1,2,3].andy_inject(:*){| memo, n | memo + n }).to eq(6)
    end

  end


end

