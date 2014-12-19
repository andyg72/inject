require 'andyarray'

describe Array do 

  context 'with a block' do

    it 'can add up numbers' do
      expect([1,2,3].inject{ | memo, n | memo + n }).to eq(6)
      expect([1,2,3].andy_inject{ |memo, n | memo + n}).to eq(6)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject{ | memo, n | memo - n}).to eq(-4)
      expect([1,2,3].andy_inject{ |memo, n | memo - n}).to eq(-4)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject{ | memo, n | memo * n}).to eq(6)
      expect([1,2,3].andy_inject{ |memo, n | memo * n}).to eq(6)
    end

  end

  context 'with a symbol' do

    it 'can add up numbers' do
      expect([1,2,3].inject(:+)).to eq(6)
      expect([1,2,3].andy_inject(:+)).to eq(6)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject(:-)).to eq(-4)
      expect([1,2,3].andy_inject(:-)).to eq(-4)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject(:*)).to eq(6)
      expect([1,2,3].andy_inject(:*)).to eq(6)
    end

  end

  context 'with an argument and a block' do

    it 'can add up numbers' do
      expect([1,2,3].inject(5){ | memo, n | memo + n }).to eq(11)
      expect([1,2,3].andy_inject(5){ | memo, n | memo + n }).to eq(11)
    end

    it 'can subtract numbers' do
      expect([1,2,3].inject(5){ | memo, n | memo - n }).to eq(-1)
      # expect([1,2,3].andy_inject(5){ | memo, n | memo - n }).to eq(1)
    end

    it 'can multiply numbers' do
      expect([1,2,3].inject(5){ | memo, n | memo * n }).to eq(30)
      # expect([1,2,3].andy_inject(5){ | memo, n | memo * n }).to eq(6)
    end

  end


end

#   with a symbol (shorthand way)
#   with an argument and block
#   with a symbol argument
# only do it on arrays

# self.each
# yield memo, item
# p item
# Proc &block
# self.shift (don't use)
