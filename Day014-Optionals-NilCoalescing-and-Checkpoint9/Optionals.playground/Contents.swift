import UIKit
import Darwin

var greeting = "Hello, playground"

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}


var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

if let number = number {
    print(square(number: number))
}

// Why does Swift make us unwrap optionals?

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}


// How to unwrap optionals with guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3
if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

/*
guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")
    // must have a return
    return
}
 */

func printSquare1(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")

}


// When to use guard let rather than if let
func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOfLife2() {
    guard let name = getMeaningOfLife() else {
        return
    }
    print(name)
}

// How to unwrap optionals with nil coalescing

let captains = [
    "Enterprise" : "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
let new2 = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number2 = Int(input) ?? 0
print(number2)

// When should you use nil coalescing in Swift?
/*
let savedData = loadSavedMessage() ?? ""
let savedData = first() ?? second() ?? ""
 */

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0
let crusherScore2 = scores["Crusher", default: 0]

// How to handle multiple optionals using optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book2 {
    let title: String
    let author: String?
}

var book2: Book2? = nil
let author2 = book2?.author?.first?.uppercased() ?? "A"
print(author)

// Why is optional chaining so important?
let names2 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names2["Vincent"]?.first?.uppercased()

let surnameLetter2 = names2["Vincent"]?.first?.uppercased() ?? "?"

// How to handle function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

// When should you use optional try?
/*
 do {
     let result = try runRiskyFunction()
     print(result)
 } catch {
     // it failed
 }
 
 if let result = try? runRiskyFunction() {
    print(result)
 }
 */

