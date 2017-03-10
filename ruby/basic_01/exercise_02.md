### Exercise 2 - Why do you use Windows' calculator even?

Create a 5 methods to represent a simple calculator:
  - sum  
  - subtract  
  - multiply  
  - divide_if  
  - divide_exception  

Remember you cannot divide by ZERO! You can treat it using 2 ways:
- IF condition
- Rescue -> To get the exception

What I expect:
- 1 file with 5 methods to calculate
- I want to pass 2 number in each method call:  
  ```
  sum(1, 3)   

  => 4
  ```
- A message informing I cannot divide by zero in both divide_if and divide_exception methods.

Final Challenge:

- Include your methods inside a class.
- Use a constant to store the divide by zero message.
