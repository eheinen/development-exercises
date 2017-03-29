### Exercise 4 - Should I learn writing and reading?

In this exercise we will work with text (strings).

- Create a method to receive 3 parameters (full name, age, job)
  - The full name parameter must be validated and formatted as follows:
    - Validation:
      - Greater than 3
      - Lesser than 40
      - Must not be empty
      - Must has a space between first name and last name
    - Format:
      - Capitalize-case (Just the first letter of each word must be uppercase)
        - Example: "Eduardo Heinen"
      - Invert the first name for the last name:
        - Example: "Heinen Eduardo"

  - The age parameter parameter must be validated and formatted as follows:
    - Validation:
      - Must be a Fixnum(Integer) type
      - Greater than 0
      - Lesser than 200
    - Format:
      - Transform the age in an extension number like the examples bellow.
        - Example: "35 - Third-five"
        - Example: "15 - Fifteen"
        - Example: "9 - Nine"

  - The job parameter parameter must be validated and formatted as follows:
    - Validation:
      - Greater than 5
      - Lesser than 50
      - Must not be empty
    - Format:
      - Change the following letter in number:        
        - a = 4
        - e = 3
        - i = 1
        - o = 0
        - s = 5
        - b = 8
        - t = 7
        - z = 2
        - Examples:
          - "Developer - D3v3l0p3r"
          - "Doctor - D0c70r"
          - "Professor - Pr0f3550r"
          - "Zoologists - 200l0g1575"


Once I executed the method above, I should see the result similar to:
```
  First Name: Heinen Eduardo
  Age: 120 - One-hundred twenty
  Job: Q4 4u70m4710n 3ng1n33r
```


#### Final Challenge:

- Create a method that receive a text formatted and replace using your calculator.  
Tip: Use **Regex (Regular Expression)**   

Examples:   

```
irb > get_my_calculation("If a multiply 2 and 5 I should see the result")
  => "If a multiply 2 and 5 I should see the result 10"

irb > get_my_calculation("If a sum 5 and 2 I should see the result")
  => "If a multiply 5 and 2 I should see the result 7"

irb > get_my_calculation("If a divide 20 and 4 I should see the result")
  => "If a multiply 20 and 4 I should see the result 5"

irb > get_my_calculation("If a divide 5 and 0 I should see the result")
  => "You cannot divide by zero your stupid"  

irb > get_my_calculation("If a subtract 1200 and 200 I should see the result")
  => "If a subtract 1200 and 200 I should see the result 1000"   
```

#### References to study

https://ruby-doc.org/core-2.2.0/String.html    
https://regexone.com/    
http://ryanstutorials.net/regular-expressions-tutorial/regular-expressions-basics.php    
Test your regex: https://regex101.com/    
