import UIKit

var greeting = "Hello, playground"

func getNumber(in array: [Int?]?) -> Int {
    lazy var random = Int.random(in: 1...100)
    return (array?.randomElement() ?? random) ?? random
}
