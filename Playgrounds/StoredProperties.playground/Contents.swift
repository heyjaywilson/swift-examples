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
