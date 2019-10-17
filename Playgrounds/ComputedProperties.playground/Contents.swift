import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var birthMonth: String
    var birthDay: Int
    var birthYear: String
    
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
    }
    
    var birthdate: String {
        return "\(birthMonth) \(birthDay), \(birthYear)"
    }
}

var maegan: Person = Person(firstName: "Maegan", lastName: "Wilson", birthMonth: "July", birthDay: 8, birthYear: "1993")

maegan.birthdate
maegan.birthDay = 20
maegan.birthdate
