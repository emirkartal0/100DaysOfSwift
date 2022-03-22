import UIKit

// Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tenis")

tennis.name = "Table Tennis"

print(tennis.name)

// Computed properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olypicStatus: String {
        if isOlympicSport {
            return "\(name) is an olypic sport"
        } else {
           return "\(name) is not an olypic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chess",
                        isOlympicSport: false)
print(chessBoxing.olypicStatus)

// Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet{
            print("\(task) is now \(amount) % complete")
        }
    }
}

var progress = Progress(task: "Loading Data"
                        , amount: 0)

progress.amount = 30
progress.amount = 70
progress.amount = 100

// Methods in structs

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

var london = City(population: 9_000)
london.collectTaxes
print(london.collectTaxes())

// Mutating Methods

struct Person {
    var name: String
    
    mutating func makeAnonymous () {
        name = "Anonymous"
    }
}

var emir = Person(name: "Emir")

emir.makeAnonymous()
print(emir)

// Properties and methods of Strings

let str = "do or no not, there is no try"

print(str.count)
print(str.hasPrefix("do"))
print(str.uppercased())
print(str.sorted())

// Properties and methods of Arrays

var toys = ["woody"]

print(toys.count)
print(toys.append("buzz"))
toys.firstIndex(of: "buzz") // given index number
print(toys.sorted())
toys.remove(at: 1)
print(toys)


