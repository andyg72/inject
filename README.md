#inject
======

##Makers Academy Week Two End of Week Challenge

Objective: Rewrite the Array class inject method (using either / both .each and recursion) 
Learning Objectives :  TDD (Test Driven Development)

Managed to get down to an 11 line method, using .each as the basis for the method.
UPDATE: following code review have reduced the lines to 4, whilst improving the readability of the code making it clear what it is doing.

UPDATE 2: following code review also managed to write a recursive method (andy_inject_recrsion) as the changes made on andy_inject made it simpler to consider how to implement.

to use through irb

```shell
require './lib/andyarray'
````

Syntax examples (same as normal inject method)
```
[1,2,3,4,5].andy_inject(5, :+)
[1,2,3,4,5].andy_inject(5){ |memo, n| memo + n }
[1,2,3,4,5].andy_inject(:+)
[1,2,3,4,5].andy_inject(5, :+)

[1,2,3,4,5].andy_inject_recursion(5, :+)
[1,2,3,4,5].andy_inject_recursion(5){ |memo, n| memo + n }
[1,2,3,4,5].andy_inject_recursion(:+)
[1,2,3,4,5].andy_inject_recursion(5, :+)
```

Learnings:
- to_proc was useful for converting symbol into a proc for instances where symbol passed.
- setting up the values/logic for the key elements (array, memo, proc) at the top of the method helped reduce repetition and make it clearer what the method was doing.

Observations:
  Noticed that existing inject method;
  - when passed an argument, symbol and a block, it prioritises symbol
  - when passed just a symbol and a block, it errors - however in my method it continues to prioritise symbol and doesn't error

To do
  - write an equivalent using recursion rather than .each - DONE
  
  
