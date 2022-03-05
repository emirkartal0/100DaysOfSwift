import UIKit
import Darwin

// Arrays
// Order of your items matter
// Arrays store items in the order you add them,
// and you access the using numerical positions

let emir = "Emir Kartal"
let omer = "Ömer Şahin"
let samet = "Samet Doğan"
let abdlh = "Abdullah Temur"

let beatles = [emir,omer,samet,abdlh]
beatles[0]

var arr = [1,2,3,4]
arr.append(1)
arr.count
arr.remove(at: 3)
print(arr)

// Sets
// Set hold unique values

let color = Set(["blue","red","yellow","black"])
let colour = Set(["blue","red","blue","black"])
color.contains("blue")
// Tuples
// 1- change the type of items in a tuple
// 2- You can’t add or remove
// Tuples are fixed in size, and you can attach names to each of their
// items. You can read items using numerical positions
// or using your names.

let name = (first:"emir", second:"kartal",sc:"deneme")
name.first
name.sc
name.0
name.1
name.2

// Dictonary

let heights : [String : Double] = [
    "Taylor Swift" : 1.78,
    "Ed Sheran" : 1.73
]
heights["Taylor Swift"]

let iceCream = [
    "paul" : "choclate" ,
    "sophie" : "vanilla"
]
// if value is not found
// dict show default value
// if you enter a value that is not, Swift returns nil value
iceCream["paul"]
iceCream["nill"]
iceCream["exp", default : "unkown"]

// Empty Collections

var teams = [String:String] ()
teams["emir"] = "kartal"

var array = [Int] ( )
array.append(12)
print(array)

var words = Set<Int>()

words = [1,2,3,4,5,6]

// Enums
// we can define a any type

enum result {
    case success
    case fail
}

let result1 = result.success
print(result1)

type(of: result1)

// Enum associated values
// enums can also store associated values attached to each case

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "fotball")
print(talking)

// Enum raw values
// Swift automatically assing each case value starting from 0
// but if you want we can give each case starting spesific number

enum Planet :Int {
    case venus = 1
    case mars
    case earth
    case mercury
}

let earth = Planet(rawValue: 2)
let ven = Planet(rawValue: 3)






