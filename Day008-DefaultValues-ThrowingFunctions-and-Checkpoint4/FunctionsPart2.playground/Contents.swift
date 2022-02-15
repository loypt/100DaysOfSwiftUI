// How to provide default values for parameters
func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)

func printTimeTablesA(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimeTablesA(for: 5, end: 20)
printTimeTablesA(for: 8)

var charactersA = ["Lana", "Pam", "Ray", "Sterling"]
print(charactersA.count)
charactersA.removeAll()
print(charactersA.count)

var charactersB = ["Lana", "Pam", "Ray", "Sterling"]
print(charactersB.count)
charactersB.removeAll(keepingCapacity: true)
print(charactersB.count)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighway: Bool = false) {
    // code here
}

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighway: true)

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

let stringA = "12345"

do {
    let result = try checkPassword(stringA)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// When should you write throwing functions?
// Why does Swift make us use try before every throwing function?

/*
 do {
     try throwingFunction1()
     nonThrowingFunction1()
     try throwingFunction2()
     nonThrowingFunction2()
     try throwingFunction3()
     nonThrowingFunction3()
 } catch {
     // handle errors
 }
 */

