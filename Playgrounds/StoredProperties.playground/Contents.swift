import Foundation

// What are stored properties
struct Name {
    var firstName: String
    var lastName: String
}

var myName: Name = Name(firstName: "Maegan", lastName: "Wilson")

myName.firstName // "Maegan"

// Changing Stored Properties

myName.firstName = "Meg"
myName.lastName = "Wil"

myName.firstName // Meg

let dogsName: Name = Name(firstName: "Thorgi", lastName: "Wilson")

dogsName.firstName // Thorgi
// Uncomment line 24 to see error
//dogsName.lastName = "Wil"

// Changing Stored Properties in a class
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
