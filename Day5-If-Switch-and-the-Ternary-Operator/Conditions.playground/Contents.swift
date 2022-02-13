// How to check a condition is true or false
/*
 if someCondition {
     print("Do something")
 }
 */
/*
 if someCondition {
     print("Do something")
     print("Do something else")
     print("Do a third thing")
 }
 */

import Darwin

let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"
if country == "Australia" {
    print("G' day!")
}

let name = "Taylor Swift"
if name != "Anonymous" {
    print("Welcome, \(name)")
}

// Create the username variable
var username = "taylorswift13"
if username == "" {
    username = "Anonymous"
}

print("Welcome, \(username)!")

if username.count == 0 {
    username = "Anonymous"
}

if username.isEmpty == true {
    username = "Anonymous"
}

if username.isEmpty {
    username = "Anonymous"
}

// How does Swift let us compare many types of data?
let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

let ageA = 16
if ageA >= 18 {
    print("You can vote in the next election.")
}

if ageA < 18 {
    print("Sorry, you're too young to vote")
}

if ageA >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

/*
 if someCondition {
     print("This will run if the condition is true")
 } else {
     print("This will run if the condition is false")
 }
 */


let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

let temp = 25
if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// What’s the difference between if and else if?
let scores = 9001

if scores > 9000 {
    print("It's over 9000!")
}

if scores > 9000 {
    print("It's over 9000!")
}

if scores <= 9000 {
    print("It's not over 9000!")
}

if scores > 9000 {
    print("It's over 9000!")
} else {
    print("It's not over 9000!")
}

if scores > 9000 {
    print("It's over 9000!")
} else {
    if scores == 9000 {
        print("It's exactly 9000!")
    } else {
        print("It's not over 9000!")
    }
}

if score > 9000 {
    print("It's over 9000!")
} else if score == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}


// How to check multiple conditions
let isOwner = true
let isAdmin = false
let isEditingEnabled = true

if isOwner == true || isAdmin == true {
    print("You can delete this post")
}

if isOwner == true && isEditingEnabled || isAdmin == true {
    print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}

if isOwner == true && (isEditingEnabled || isAdmin == true) {
    print("You can delete this post")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// How to use the ternary conditional operator for quick tests
let ageB = 18
let canVote = ageB >= 18 ? "Yes" : "No"

let hourA = 23
print(hourA < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No One" : "\(names.count) people"
print(crewCount)


enum Theme {
    case light, dark
}
let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

let hourB = 23
print(hourB < 12 ?  "It's before noon" : "It's after noon")


// Invalid code
/*
 print(
     if hourB < 12 {
         "It's before noon"
     } else {
         "It's after noon"
     }
 )
 */

if hourB < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}


// When should you use the ternary operator in Swift?
let isAuthenticatedA = true
print(isAuthenticatedA ? "Welcome!" : "Who are you?")

if isAuthenticatedA {
    print("Welcome")
} else {
    print("Who are you?")
}


