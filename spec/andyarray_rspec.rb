require 'andyarray'

describe andy_array do 

let(andy){AndyArray.new}

it 'should return 6 when passed ([1,2,3], 0, memo + n)' do
  expect(andy.andy_array([1,2,3],0,'memo + n'))
end

end

