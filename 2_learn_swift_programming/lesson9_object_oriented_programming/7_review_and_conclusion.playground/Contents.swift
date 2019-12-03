import UIKit

/*
 Reflect
 Q1. In your own words, what's the difference between "passing by value" and "passing by reference"? What happens if you try to modify a value that was passed by value versus one that was passed by reference?
 
 Something that is passed by value such as an instance of a struct is copied when it's assigned to a variable or passed to a function. Changing a property on the instance will only apply to the copy, and the original instance will remain unchanged.

 Values that are passed by reference, such as instances of classes, are not copied. Changing a value on a copy will also modify the original instance, since the copy is simply referencing the original.
 
Reflect
Q2. For each of the following, determine if it's best represented by a class, property, or method.

    1. The tail length of an animal.
    2. Baking cookies
    3. An employee
    4. A vehicle belonging to a person
    5. Sending an email
 
 Things to think about
 Here's what we answered.

 1. Property: Tail length is a simple numeric value that can be represented by an integer or floating point number.
 2. Method: Baking cookies is an action, so a method would be used.
 3. Class: An employee may have many properties and also has the ability to perform actions, so this sounds like a class.
 4. Property: The vehicle belongs to a person, so it is likely the property of a class representing a person. If you answered "Class" than that's right too, as it has many properties and performs many functions.
 5. Method: This is also an action, and methods perform actions.

 Reflect
 Let's take a minute for some practice with inheritance. Consider the following class hierarchy:
 
Reflect
Q3. Let's take a minute for some practice with inheritance. Consider the following class hierarchy:

     A LeadGuitarist inherits from a Guitarist.
     A RhythmGuitarist inherits from Guitarist.
     A Guitarist inherits from a Musician.
     A Musician does not inherit from any class.
 
 Now answer these questions (hint: it may help to draw a hierarchy diagram—similar to a family tree—for these classes):
 
     1. Which class is a superclass of LeadGuitarist?
     2. Which class is a subclass of Musician?
     3. What are the subclasses of Guitarist?
     4. Name the leaf class or classes.
     5. Name the root class or classes.
     6. Name the ancestors of LeadGuitarist.
     7. Name the descendants of Guitarist.
     8. Name the child classes of Guitarist.
 
     1. Guitarist
     2. Guitarist
     3. LeadGuitarist and RhythmGuitarist
     4. LeadGuitarist and RhythmGuitarist
     5. Musician
     6. Guitarist and Musician
     7. LeadGuitarist and RhythmGuitarist
     8. LeadGuitarist and RhythmGuitarist
 
 Perfect Score on Question #3
 
 */
