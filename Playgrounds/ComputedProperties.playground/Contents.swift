import Foundation

// First example of a computed property with only a getter
struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int{
        get {
            return width*height
        }
    }
}

var rect: Rectangle = Rectangle(width: 12, height: 5)
rect.area
rect.width = 15
rect.area

// Example with a getter and a setter
struct Square {
    var width: Int
    
    var area: Int {
        get {
            return width * width
        }
        set(newArea) {
            width = Int(sqrt(Double(newArea)))
        }
    }
}

var sqr: Square = Square(width: 12)
sqr.area
sqr.area = 25
sqr.width

struct Circle {
    var radius: Double
    // 1.
    var area: Double {
        get {
            return Double.pi * radius
        }
        set(newArea) {
            radius = newArea / Double.pi
        }
    }
    // 2.
    func getBiggerCirclesArea(times: Int) -> Double{
        return radius * Double(times) * Double.pi
    }
}
