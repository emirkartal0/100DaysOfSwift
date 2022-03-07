import UIKit

var greeting = "Hello, playground"

// Operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

// Operator overloading

let meaningOfLife = 42
let doubleLife = 42 + 42

// swift joins string

let name = "emir "
let surname = "kartal"
let sum = name + surname + "dev"

// can even use + to join arrays

let arr = ["emir", "kartal"]
let arr2 = ["omer", "sahin"]

let arrLast = arr + arr2
print(arrLast)

// Compound assigment operator +=  -=  *=  /=

var score = 95
score -= 5
print(score)

var quote = "the rain is Spain"
quote += "fall mainly on the Spaniards"
print(quote)

var result = 20
result /= 2

// Comparison operators ==  !=  <  > each of these
// also work with strings because strings have a
// natural alphabetical order.

var number1 = 4
var number2 = 6

number1 == number2
number1 != number2

number1 < number2
number1 >= number2

"Taylor" > "Swift"

// Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces a lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular Cards")
}

// Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// The Ternary Operator

var number10 = 10
var number11 = 11

print(number10 == number11 ? "number are the same" : "numbers different")

// Switch statements
// If you want execution to continue on to the next case,
// use the fallthrough keyword

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("enjoy your day")
}

// Range Operators  ..<   ...
// the range 1..<5 contains the numbers 1, 2, 3, and 4
// the range 1...5 contains the numbers 1, 2, 3, 4, and 5

let lesScore = 90

switch lesScore {
case ..<50:
    print("You are failed.")
case 50..<85:
    print("You are did OKE.")
default:
    print("You did great")
}


