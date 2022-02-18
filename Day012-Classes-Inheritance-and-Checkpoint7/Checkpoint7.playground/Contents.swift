import UIKit

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        assertionFailure("This should never be called.")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Meow")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Yip!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Purr")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}
