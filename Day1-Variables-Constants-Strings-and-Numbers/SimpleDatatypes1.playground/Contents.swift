import UIKit

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

let character = "Daphne"
// Cannot assign to value: 'character' is a 'let' constant
/*
 character = "Eloise"
 character = "Francesca"
 */

// Print
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// Camel case
let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

// Why does Swift have variables?
var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

// Why does Swift have constants as well as variables?


// How to create strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "🌟 You win！🌟"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

/* Not allow line break in strings
let movie = "A day in
the life of an
Apple engineer"
 */

let movie = """
A day in
the life of an
Apple engineer
"""

// Read the length of a string
print(actor.count)
let nameLength = actor.count
print(nameLength)

// Sends back the same string except every one of its letter is uppercased
print(result.uppercased())

// whether a string starts with some letters of our choosing
print(movie.hasPrefix("A day"))

// check whether a string ends with some text
print(filename.hasSuffix(".jpg"))

//Why does Swift need multi-line strings?
// var quote = "Change the world by being yourself"
var burns = """
The best laid schemes
O’ mice and men
Gang aft agley
"""


// How to store whole numbers
let score = 10
// let reallyBig = 100000000
let reallyBig = 100_000_000
// let reallyBig = 1_00__00___00____00

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter = counter + 5

counter += 5
print(score)

counter *= 2
print(score)
counter -= 10
print(score)
counter /= 2
print(score)

// find out whether it's a multiple of another integer
let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))


// How to store decimal numbers
let number1 = 0.1 + 0.2
print(number1)

let a = 1
let b = 2.0
// not allowed
// let c = a + b

let c = a + Int(b)
// let c = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

/* This kind of code is not
 var name = "Nicolas Cage"
 name = 57
 */

var rating = 5.0
rating *= 2

// Why doese Swift need both Doubles and Integers?
