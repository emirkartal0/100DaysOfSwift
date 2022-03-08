import UIKit

// day3 repeat

let number = 70...100
print(number)

let tvShow = "Breaking" + "Bad"

// switch must have default case
let numberOfCats = 5
switch numberOfCats {
case 0:
    print("You have no cats")
case 1...3:
    print("You have some cats")
case 4..<10:
    print("You have many cats!")
default:
    print("must")
}

// Loops

// for loops

let count  = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red","1989","Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

for _ in 1...5 {
    print("play")
}

// while loops

var num = 1

while num <= 20 {
    print(num)
    num += 1
}

// repeat loops

var numb = 1

repeat {
    print(numb)
    numb += 1
} while numb <= 20
            
// at least it runs once (do-while)

repeat {
    print("this is false")
} while false
            
// Exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("i am bored. Lets go now!")
        break
    }
    countDown -= 1
}

// Exiting multiple loops
// Break outerLoop to exit both loops at the same time

outerLoop: for i in 1...10 {
    for j in 1...10{
        let product  = i*j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("hi")
            break outerLoop
        }
    }
}

// Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

for i in 1...5 {
    if i == 5 {
        continue
    }
    let sum = i + i
    print("\(i) + \(i) is \(sum).")
}

// Infinite Loops

var counter1 = 0

while true {
    print(" ")
    counter1 += 1
    
    if counter1 == 273 {
        break
    }
}
