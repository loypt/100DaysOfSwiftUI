import UIKit

// How to create your own classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// How to make one class inherit from another
class Employee {
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writting code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will somtimes work \(hours) a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meeting for \(hours) hours.")
    }
}

let rebert = Developer(hours: 8)
let joseph = Manager(hours: 10)
rebert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

// How to add initializers for classes
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertiable: Bool
    
    init(isElectric: Bool, isConvertiable: Bool) {
        self.isConvertiable = isConvertiable
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertiable: false)

// How to copy classes
class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)


// Why do copies of a class share their data?
var message = "Welcome"
var greeting = message
greeting = "Hello"


class Starship {
    var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)
print(enterprise.maxWarp)

// How to create a deinitializer for a class

class User1 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user1 = User1(id: 1)
    print("User \(user1.id): I'm in control!")
}

var users = [User]()

for i in 1...3 {
    let user2 = User1(id: i)
    print("User \(user2.id): I'm in control!")
    // users.append(user2)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// How to work with variables inside classes
class User3 {
    var name = "Paul"
}

let user3 = User3()
user3.name = "Taylor"
print(user3.name)

class User4 {
    var name = "Paul"
}
var user4 = User4()
user4.name = "Taylor"
user4 = User4()
print(user4.name)

// Why can variable properties in constant classes be changed?
var number = 5
number = 6
