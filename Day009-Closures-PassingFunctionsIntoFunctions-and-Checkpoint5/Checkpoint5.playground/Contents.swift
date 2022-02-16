
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func isOdd(number: Int) -> Bool {
    number.isMultiple(of: 2) == false
}

func luckyString(_ number: Int) -> String {
    "\(number) is a lucky number."
}

print("First Try")
let result: () = luckyNumbers.filter{ $0.isMultiple(of: 2) == false }.sorted().map{"\($0) is a lucky number."}.forEach{ print($0) }

func printValue(_ string: String) {
    print(string)
}

print("Second Try")
luckyNumbers.filter(isOdd).sorted().map(luckyString).forEach(printValue)
