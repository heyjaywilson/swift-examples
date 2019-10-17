# Stored Properties

This post is going to define what a stored property is and how to use it.

There is a Swift Playground with examples in this post. It is at [this link](https://github.com/maeganjwilson/swift-examples/tree/master/Playgrounds/StoredProperties.playground). Feel free to copy the files or clone the entire [repo](https://github.com/maeganjwilson/swift-examples), but the repo has more than just this post's sample code.

## Topics covered in this post

- What is a Stored Property
- How to create a Stored Property
- Changing Stored Properties

# What is a Stored Property?

According to the documentation:

> A stored property is a constant or variable that is stored as part of an instance of a particular class or structure

A stored property is a value that is in a class or structure as a variable or constant.

# How to create a Stored Property

1. Create a structure or class
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

If the properties were constants, then they could not be changed. If the instance of a **structure** is assigned to a constant, then the properties cannot be changed. If the instance of a **class** is assigned to a constant, then the properties can be changed. This difference is due to the value (structures) vs. reference (classes) types. When a value type is declared as a constant, then so are all the properties. It does not matter if the properties were declared as variables or constants. When a reference type is declared as a constant, then the properties that are variables can be changed for that instance.

*Reminder*
- A structure is a **value type**. 
- A class is a **reference type**. 

## Example of Changing Stored Properties in a Struct

Notice that `myName` was declared as a variable, and the properties of `Name` are variables as well. Since everything is a variable, the properties of `myName` can still be changed.

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

## Example of Changing Stored Properties in a Class

```swift
class Pet {
    var name: Name
    var type: String
    
    init(name: Name, type: String){
        self.name = name
        self.type = type
    }
}

let dobby: Pet = Pet(name: Name(firstName: "Dobby", lastName: "Wilson"), type: "dog")
dobby.type // dog
dobby.type = "cat"
dobby.type // cat
```

This example does not produce an error because `Pet` is a class and is, therefore, a reference value.

---

If you enjoyed this post and want more, please consider subscribing to my [Patreon](https://www.patreon.com/maeganwilson_) and checking out my other posts!

If you don't like having more subscriptions, consider buying me a coffee by clicking the image below! <a href="https://www.buymeacoffee.com/mwilsonapps" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>
