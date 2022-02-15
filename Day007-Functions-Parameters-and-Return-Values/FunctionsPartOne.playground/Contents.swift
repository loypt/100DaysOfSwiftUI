// How to reuse code with functions

import Darwin
print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)
// printTimesTables(5, 20)


// How to return values from functions

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}


func areLettersIdenticalA(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

func areLettersIdenticalB(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func rollDiceA() -> Int {
    Int.random(in: 1...6)
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

func pythagorasB(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

// When is the return keyword not needed in a Swift function?
let isAdmin = true
let isOwner = false
let isEditingEnabled = false

// isOwner == true && isEditingEnabled || isAdmin == true
let name = "Otis"

if name == "Maeve" {
    print("Hello, Maeve!")
}

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

// Not allowed
/*
 func greetA(name: String) -> String {
     if name == "Taylor Swift" {
         "Oh wow!"
     } else {
         "Hello, \(name)"
     }
 }
 */

func greetB(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

func greetC(name: String) -> String {
    "Oh wow!"
}


// How to return multiple values from functions
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUserA() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let userA = getUserA()
print("Name: \(userA["firstName", default: "Anonymous"]) \(userA["lastName", default: "Anonymous"])")

func getUserB() -> (firstName: String, lastName: String) {
  (firstName: "Taylor", lastName: "Swift")
}

let userB = getUserB()
print("Name: \(userB.firstName) \(userB.lastName)")

func getUserC() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

func getUserD() -> (String, String) {
    ("Taylor", "Swift")
}

let userD = getUserD()
print("Name: \(userD.0) \(userD.1)")

func getUserE() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let userE = getUserE()
let firstName = userE.firstName
let lastName = userE.firstName

print("Name: \(firstName) \(lastName)")

let (firstNameA, lastNameA) = getUserE()
print("Name: \(firstNameA) \(lastNameA)")

let (firstNameB, _) = getUserE()
print("Name: \(firstNameB)")

// How to customize parameter labels
func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()

    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercaseA(string: String) -> Bool {
    string == string.uppercased()
}

let stringA = "HELLO, WORLD"
let resultA = isUppercaseA(string: stringA)

func isUppercaseB(_ string: String) -> Bool {
    string == string.uppercased()
}

let stringB = "HELLO, WORLD"
let resultB = isUppercaseB(stringB)

func printTimesTablesB(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesB(number: 5)

/*
 func printTimesTablesC(for: Int) {
     for i in 1...12 {
         print("\(i) x \(for) is \(i * for)")
     }
 }

 printTimesTablesC(for: 5)
 */

func printTimesTablesD(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesD(for: 5)
