enum NumberError: Error {
    case outOfBounds
    case noRoot
}

func findSqrt(number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw NumberError.outOfBounds
    }
    for i in 1...100 {
        if i*i == number {
            return i
        }
    }
    throw NumberError.noRoot
}

print(try findSqrt(number: 8888))
