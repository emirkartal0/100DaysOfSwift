import UIKit

// Functions

func printHelp () {
    let message = """
Welcome my app!
Run this app inside directory images and
MyApp will resize them all into thumnails
"""
    print(message)
}

printHelp()

// Accepting Parameters

func square(number: Int){
    let number = number * number
    print(number)
}

square(number: 8)

// Returning Values

func square1(number: Int) -> Int{
    return number*number
}

let result = square1(number: 5)
print(result)

// if, in if condition you must put other return type
func paintHouse(color: String) -> Bool {
    if color == "tartan" {
        return false
    }
    else {
        return true
    }
}

// Parameter labels

func kare (number: Int) -> Int{
    return number*number
}

let sonuc = kare(number: 8)

func sayHello (to nam: String) {
    print("Hello \(nam)!")
}

sayHello(to: "emir")

// Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("emir")

// Default parameters

func greed(_ person: String, nicely: Bool =  true){
    if nicely {
        print("Hello \(person)!")
    } else {
        print("Oh oh, it's \(person) again...")
    }
}
greed("kartal")
greed("kartal", nicely: false)

// Variadic functions

print("Haters", "gonna", "hate")

func numbers(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

numbers(numbers: 3,4,5,6,7,8,9)

// Writing throwing functions

enum PasswordError: Error {
    case obvious;
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
// checkPassword("password")

// Running throwing functions

do {
    try checkPassword("password")
}catch {
    print("you can't use this password")
}

// inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var mynum12 = 10
doubleInPlace(number: &mynum12)

