for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("\(i) should print FizzBuzz")
        continue
    }
    if i.isMultiple(of: 3){
        print("\(i) should print Fizz")
        continue
    }
    if i.isMultiple(of: 5){
        print("\(i) should print Buzz")
        continue
    }
    print("\(i) should print \(i)")
}
