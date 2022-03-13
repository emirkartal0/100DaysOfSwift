import UIKit

// Creating basic closures

let driving = {
    print("i'm driving in my car")
}

driving()

// Accepting parameters in a closure

let driving1 = { (place: String) in
    print("i'm going to \(place) in my car")
}

driving1("arabica coffe")

// Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "i'm going to \(place)"
}

let message = drivingWithReturn("Istanbul")

print(message)

// Returning values from a closure

func travel(action: () -> Void){
    print("i'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax

func trailingTravel(action: () -> Void) {
    print("i'm getting ready to go cinema")
    action()
    print("I arrived")
}

trailingTravel {
    print("I am driving your car")
}

