# Stored Properties

This post is going to define what a stored property is and how to use it.

There is a Swift Playground with the examples in this post. It can be found at [this link](link). Feel free to copy the files or clone the entire [repo](github link), but the repo will have more than just this post's sample code.

# What is a Stored Property?

According to the documentation:

> A stored property is a constant or variable that is stored as part of an instance of a particular class or structure

Basically, a value that is stored in a class or structure as a variable or constant is a stored property.

# How to create a Stored Property

1. Creat a structure or class
2. Declare a variable or constant in the class

## Example of Stored Properties

```swift
struct Name {
    var firstName: String
    var lastName: String
}

```
In the example, there are 2 properties, `firstName` and `lastName`.

Now, to use the properties.

```swift
var myName: Name = Name(firstName: "Maegan", lastName: "Wilson")

myName.firstName // "Maegan"

```

# Changing Stored Properties

As long as the properties are variables and used on an instance that is not a constant, the values can be changed.

If the properties were constants, then they could not be changed. If the instance of a **structure** is assigned to a constant, then the properties cannot be changed. If the instance of a **class** is assigned to a constant, then the properties can be changed. This

## Example of Changing Stored Properties in a Struct

Notice that `myName` was declared as a variable and the properties of `Name` are variables as well. Since everything is a variable, the properties of `myName` can still be changed.

```swift
myName.firstName = "Meg"
myName.lastName = "Wil"

myName.firstName // Meg
```

In the following example, running the code will cause an error.
```swift
let dogsName: Name = Name(firstName: "Thorgi", lastName: "Wilson")

dogsName.firstName // Thorgi
dogsName.lastName = "Wil"

```
The error should say `Cannot assign to property: 'dogsName' is a 'let' constant`. This error is because `dogsName` is declared as a constant.
