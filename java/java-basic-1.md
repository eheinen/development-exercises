# Java Basic 1 - Exercise

Create the following structure in your project:

### Classes: 

  **Animal**  
  \- id : long  
  \- name : String  
  \- type : TypeEnum  
  \- age : int  

  **TypeEnum (Enum Type)**  
  \+ DOG  
  \+ CAT  
  \+ BIRD  

  **Person**  
    \- id : int  
    \- name : String  
    \- age : int  
    \- animals : List<Animal>  

### Main:

  Now create a main class and do the following items:

  1 - Create some animals:
  
      name = Floppy
      type = DOG
      age = 2

      name = Grail
      type = CAT
      age = 5

      name = Ember
      type = BIRD
      age = 7

      name = Fork
      type = DOG
      age = 10

  2 - Create a person with:
  
      name = Rick Grimes
      age = 47
      animals = { Floppy, Ember }

      name = Daryl Dixon
      age = 35
      animals = { Grail }

      name = Carl Grimes
      age = 16
      animals = { Fork }

  Easy peasy?

  3 - Now, I want to know the following things:
  
      - Average age among all animals and all people;
      - Max age to animals and people (Join all ages and sum!)
      - Difference between total animals age and people ages
      - Put all animals in a List and sort it by name ascending
      - Put all people in a List and filter it to show just who has age lesser than 20
      - Show all animals and people (Remember to show the data as id, name, age, etc.)
