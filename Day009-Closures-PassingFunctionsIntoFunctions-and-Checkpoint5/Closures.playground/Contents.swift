import Foundation
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHelloA = { (name: String) -> String in
    "Hi \(name)!"
}

var greetCopyA: () -> Void = greetUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

sayHelloA("Taylor")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

let sayHelloC = {
    print("Hi there!")
}

sayHelloC()

let captainFirstTeamA = team.sorted(by: captainFirstSorted)

let captainFirstTeamB = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

// What the heck are closures and why does Swift love them so much?
// Why are Swift’s closure parameters inside the braces?
func pay(user: String, amount: Int) {
    // code
}

let payment = { (user: String, amount: Int) in
    // code
}

// How do you return a value from a closure that takes no parameters?
let paymentA = { (user: String) in
    print("Paying \(user)...")
}

let paymentB = { (user: String) -> Bool in
    print("Paying \(user)...")
    return true
}

let paymentC = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}

// How to use trailing closures and shorthand syntax
let teamC = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeamC = teamC.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeamC)


let captainFirstTeamD = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}


let captainFirstTeamE = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1}

let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// Why does Swift have trailing closure syntax?
func animate(duration: Double ,animations: () -> Void) {
    print("Starting a \(duration) second animation...")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}

// When should you use shorthand parameter names?

// How to accept functions as parameters
func greetUserB() {
    print("Hi there!")
}

greetUserB()

var greetCopyB: () -> Void = greetUserB
greetCopy()

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

/*
 func makeArrayB(size: Int, using generator: () -> Int) -> [Int] {
     //
 }
 */

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generatedNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generatedNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

