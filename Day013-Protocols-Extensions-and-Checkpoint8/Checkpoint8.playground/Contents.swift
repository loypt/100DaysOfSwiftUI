import UIKit

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var agent: String { get set }
    var type: String { get }
    func printSummary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    let type = "house"
    
    func printSummary() {
        print("Talk ot \(agent) to buy this house for $\(cost).")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    let type = "office"
    
    func printSummary() {
        print("Talk to \(agent) to buy this office for $\(cost).")
    }
}

extension Building {
    func printSummary() {
        print("Talk to \(agent) to buy this \(type) for $\(cost).")
    }
}

let exampleHouse = House(rooms: 4, cost: 500_000, agent: "Swift & Co")
exampleHouse.printSummary()

let exampleOffice = Office(rooms: 30, cost: 12_000_000, agent: "Taytay Inc")
exampleOffice.printSummary()


