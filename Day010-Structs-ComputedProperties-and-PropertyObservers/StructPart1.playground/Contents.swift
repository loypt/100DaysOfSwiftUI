import UIKit
import Darwin

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

let a = 1
let b = 2.0
let c = Double(a) + b

let name: String
var vacationRemaining = 14

// let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

// What’s the difference between a struct and a tuple?
struct User {
    var name: String
    var age: Int
    var city: String
}

/*
 func authenticate(_ user: User) { ... }
 func showProfile(for user: User) { ... }
 func signOut(_ user: User) { ... }
 */

/*
 func authenticate(_ user: (name: String, age: Int, city: String)) { ... }
 func showProfile(for user: (name: String, age: Int, city: String)) { ... }
 func signOut(_ user: (name: String, age: Int, city: String)) { ... }
 */

// What’s the difference between a function and a method?
// Why do we need to mark some methods as mutating?
struct Employee2 {
    let name: String
    var vacationRemaining: Int
}

var archer3 = Employee2(name: "Sterling Archer", vacationRemaining: 14)
archer3.vacationRemaining -= 5
print(archer3.vacationRemaining)
archer3.vacationRemaining -= 3
print(archer3.vacationRemaining)

struct Employee3 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    /*
     var vacationRemaining: Int {
         vacationAllocated - vacationTaken
     }
     */
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer4 = Employee3(name: "Sterling Archer", vacationTaken: 14)
archer4.vacationTaken += 4
print(archer4.vacationRemaining)
archer4.vacationTaken += 4
print(archer.vacationRemaining)

var archer5 = Employee3(name: "Sterling Archer", vacationAllocated: 14)
archer5.vacationTaken += 4
archer5.vacationRemaining = 5
print(archer5.vacationAllocated)


// How to take action when a property changes
struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1


struct Game1 {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game1 = Game1()
game1.score += 10
game1.score -= 3
game1.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

// How to create custom initializers
struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Megan R", number: 15)

struct Player1 {
    let name: String
    let number: Int
    
    init(name: String, number: Int){
        self.name = name
        self.number = number
    }
}

struct Player2 {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

/*
 let player = Player(name: "Megan R")
 print(player.number)
 */

// How do Swift’s memberwise initializers work?
struct User {
    var name: String
    var yearsActive = 0
}

struct Employee4 {
    var name: String
    var yearsActive = 0
}

let roslin = Employee4(name: "Laura Roslin")
let adama = Employee4(name: "William Adama", yearsActive: 45)

struct Employee5 {
    var name: String
    var yearsActive = 0
    
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee...")
    }
}

// let roslin = Employee5(name: "Laura Roslin")

struct Employee6 {
    var name: String
    var yearsActive = 0
}

extension Employee6 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee...")
    }
}

let roslin2 = Employee6(name: "Laura Roslin")
let anon2 = Employee6()


// When would you use self in a method?

struct Student {
    var name: String
    var bestFriend: String
    
    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class...")
        self.name = name
        self.bestFriend = bestFriend
    }
}


struct Student1 {
    var name: String
    var bestFriend: String
    
    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class...")
        name = studentName
        bestFriend = studentBestFriend
    }
}
