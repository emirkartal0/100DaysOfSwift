import UIKit

// Using closures as parameters when they accept parameters

func acceptTravel(action: (String) -> Void) {
    print("i'm getting ready")
    action("Ankara")
    print("I arrived!")
}

acceptTravel { (place: String) in
    print("I'm going to \(place) in my car")
}

// Using closures as parameters when they return values

func aptTravel(action: (String) -> String) {
    print("i'm getting ready")
    let decription = action("istanbul")
    print(decription)
    print("I arrived!")
}

aptTravel {(place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names

func travel (action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("london")
    print(description)
    print("I'm arrived")
}

travel { place in
    "I'm going to \(place) in my car"
}

travel {
    "I'm going \($0) in my car"
}

// Closures with multiple parameters

func travelTwo (action: (String, Int) -> String) {
    print("I am getting ready to go 2")
    let description = action("İstanbul", 80)
    print(description)
    print("I'm arrived")
}

travelTwo{
    "I am going to \($0) at \($1) miles per hour"
}

// Returning closures from functions

func travelThree() -> (String) -> Void {
    return {
        print("I am going to \($0)")
    }
}

let result = travelThree()
result("Aspava")

let result1 = travelThree()("Donas")

// Capturing values

func travelFour() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result10 = travelFour()
result10("multlx")
result10("multlx")
result10("multlx")

