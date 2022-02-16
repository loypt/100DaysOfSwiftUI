import UIKit

// How to limit access to internal data using access control
struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdraw money successfully")
} else {
    print("Failed to get the money")
}

// account.funds -= 1000

// What’s the point of access control?

// Static properties and methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "setting.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

// What’s the point of static properties and methods in Swift?
struct Unwrap {
    static let appURL = "https://apps.apple.com/app/id1440611372"
}

/*
 static var entropy = Int.random(in: 1...1000)
 */

/*
 static func getEntropy() -> Int {
     entropy += 1
     return entropy
 }
 */

